# 처음으로 깃 설치 후

## 1. 깃 설치가 되어 있는지 확인
git --verison

## 2. 설치되어 있다면 사용자 정보 등록
git config --global user.name "나의 이름"  
git config --global user.email "나의 이메일"  

# 기본 설정이 끝난 뒤(새로운 프로젝트 올릴 경우)

## 1. 올리고 싶은 폴더로 이동
cd C:\Users\user\NEON  
git init  //git init으로 .git폴더를 생성해 Git으로 관리할 수 있음

## 2. .gitignore파일 만들기
민감한 정보 + 빌드 파일은 올리지 않도록 주의

## 3. GitHub에 레파지토리 만들기

## 4. 로컬 프로젝트와 GitHub연결
git remote add origin https://github.com/너의 아이디/너의 프로젝트.git

## 5. 커밋하고 푸시하기
git add .  
git commit -m "처음 업로드"  
git push -u origin master  

## 6. 협업자 초대
Settings -> Collaborators -> 이메일 또는 GitHubID로 초대

# 초대 되었을 경우
git clone https://github.com/나의 아이디/나의 프로젝트.git
  
///////////////////////////////////////////////////////////////////

## 브랜치 생성
git checkout -b 기능/나의이름_작업내용   

checkout -b => 새 브런치를 만들고 바로 이동  

## 브랜치 푸시
다른 과정은 동일  
git add .  
git commit -m " feat: 로그인 API 구현"  
  
git push origin 나의_브런치  
  
## Pull Request 만들기
GitHub 저장소로 이동  
"Compare & pull request"버튼 클릭 //main에 병합해 달라고 요청  
리뷰 요청 후 main 또는 dev 브랜치로 병합  

//////////////////////////////////////////
# 병합 방업

## 1. 병합할 브랜치로 이동
git checkout main

## 2. 병합 실행
git marge 팀원 브랜치

/////////////////////////////////////////////

# 병합 충돌 발생시
충돌된 파일 열기 -> <<<<<<<<<<<, =========== ,>>>>>>>>>>> 표시 확인  
원하는 코드로 수정  
수정 후 저장  
충돌 해결 후 커밋  
ex) git add.  
    git commit -m "fix: marge conflict resolved"  
  
git push origin main  
  
### ★ 병합 전 항상 최신 코드 받아오기
git pull origin main