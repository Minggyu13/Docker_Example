# Python 3.9 슬림 버전을 사용
FROM python:3.9-slim

# 컨테이너 내부 작업 디렉토리 설정
WORKDIR /app

# 현재 디렉토리의 모든 파일을 컨테이너의 /app으로 복사
COPY . /app

# Python 의존성 설치
RUN pip install --no-cache-dir -r requirements.txt

# 컨테이너 실행 시 Python 애플리케이션 시작
CMD ["python", "main.py"]
