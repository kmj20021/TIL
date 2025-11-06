## CORS란? Cross Origin Resource Shareing
교차 출처 리소스
SOP에 의해 제한된 교차 출처 간 리소스 공유를 허용하기 위한 방법
애플리케이션의 요구사항이 복잡해지면서 다른 도메인의 리소스를 활용하는 경우가 많아져 등장한 프로토콜

## SOP란?
Same Origin Policy로 동일 출처 정책을 의미
현재 출처와 동일한 출처의 리소스만 접근할 수 있도록 하는 정책
동일 출처 : 도메인, 프로토콜, 포트 번호가 모두 같은 경은 출처

## 사용하는 이유는?
세션 정보들이 쿠키에 포함되어 있을 수 있기에 Cross Site Scripting 또는 CSRF와 같은 해킹 공격에 취약

## Cors 프로토콜의 동작 원리
서버는 다음과 같이 응답 처리 코드에서 cors관련 헤더를 설정

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

// 허용할 origin 목록
allowed_origins = [
    "http://example.com",
    "http://---"
]

// CORS 미들웨어 설정
app.add_middleware(
    CORSMiddleware,
    allow_origins=allowed_origins,
    allow_credentials=True,
    allow_methods=["GET", "POST", "PUT", "DELETE"],
    allow_headers=["Content-Type", "Authorization"]
)

@app.get("/")
async def root():
    return {"message": "CORS 설정된 FastAPI 서버입니다."}

프론트에서 요청하는 헤더 정보와 서버에서 허용한 헤더의 정보가 일치하지 않으면 cors에러

## Preflight 요청이란?
보안적으로 민감한 cors 요청에 대해 요청이 가능한지 먼저 확인하는 과정
브라우저에서 자동으로 실행
보안적으로 민감하지 않은 요청, 이전에 응답 받아 캐싱되어 있는 경우는 preflight 요청이 일어나지 않는다.
서버에서 const corsOptions = {
maxAge :600,};으로 헤더값을 초 단위로 설정 가능

## 단순 요청이란?
GET, HEAD, POST 메서드이며 헤더와 Content-Type이 cors 프로토콜에서 지정한 값인 경우가 단순 요청에 해당
