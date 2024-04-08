from flask import Flask, request, jsonify
import requests
import json

app = Flask(__name__)

def get_metadata(path):
    base_url = 'http://169.254.169.254/latest/meta-data/'
    url = base_url + path
    response = requests.get(url)
    if response.status_code == 200:
        return response.text
    else:
        return None

def generate_json_output():
    data = {
        'instance-id': get_metadata('instance-id'),
        'instance-type': get_metadata('instance-type'),
        'ami-id': get_metadata('ami-id'),
        'public-ip': get_metadata('public-ipv4')
    }

    return json.dumps(data, indent=2)

def process_dict(json_object):
    for key, value in json_object.items():
        if isinstance(value, dict):
            process_dict(value)
        else:
            return {'key':key,'value':value}


@app.route('/')
def api_endpoint():
    data = generate_json_output()
    return jsonify(data)

@app.route('/process_data', methods=['POST'])
def process_data_function():
    request_data = request.get_json()
    result = process_dict(request_data)
    return jsonify(result)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
