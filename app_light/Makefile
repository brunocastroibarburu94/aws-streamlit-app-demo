pip-compile:
	pip-compile --resolver=backtracking --verbose --output-file=requirements.txt requirements.in
	pip-sync requirements.txt

pip-sync:
	pip-sync requirements.txt

app:
	streamlit run ./app.py --server.port=8032 --server.address=0.0.0.0 --logger.level=debug

