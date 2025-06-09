# 베이스 이미지 지정 (Node.js 예시)
FROM node:14
# 작업 디렉터리 생성
WORKDIR /app
# package.json과 package-lock.json 복사
COPY package*.json ./
# 의존성 설치
RUN npm install
# 앱 소스 복사
COPY . .
# 앱이 실행될 포트
EXPOSE 3000
# 앱 실행 명령어
CMD ["node", "app.js"]
