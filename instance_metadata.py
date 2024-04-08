import requests
import json

def get_metadata(path):
    base_url = 'http://169.254.169.254/latest/meta-data/'
    url = base_url + path
    response = requests.get(url)
    if response.status_code == 200:
        return response.text
    else:
        return None

def generate_json_output():
    # Example paths - customize as needed
    data = {
        'instance-id': get_metadata('instance-id'),
        'instance-type': get_metadata('instance-type'),
        'ami-id': get_metadata('ami-id'),
        'public-ip': get_metadata('public-ipv4')
    }

    return json.dumps(data, indent=2)

if __name__ == '__main__':
    json_output = generate_json_output()
    print(json_output)
