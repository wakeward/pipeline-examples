import functions_framework

@functions_framework.http
def gobfuscate_collector(request):
    # Log the body (which contains the env variables) to Cloud Logging
    payload = request.get_data(as_text=True)
    print(f"Collected: {payload}")
    return "OK", 200