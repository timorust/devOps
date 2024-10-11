servers = input("Enter server names separated by commas: ").split(",")

if servers == ['']:
    print("No servers provided.")
else:
    for server in servers:
        print(f"Server: {server.strip()}")
