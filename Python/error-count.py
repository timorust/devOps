with open('/root/script-project/log-directory/log_file.log', 'r') as log_file:
    content = log_file.read()
    error_count = content.count("ERROR")
print(f"Total 'ERROR' occurrences: {error_count}")

