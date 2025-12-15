# Zork I 빌드 가이드

이 문서는 Zork I 소스 코드를 컴파일하고 실행하는 방법을 설명합니다.

## 🎮 가장 빠른 방법: 컴파일된 파일 실행

이미 컴파일된 파일이 포함되어 있습니다:
- `zork1.zip` - Z-machine 게임 파일
- `COMPILED/zork1.z3` - Z-machine version 3 파일

### Linux/macOS에서 실행:
```bash
# Frotz 설치
sudo apt-get install frotz  # Ubuntu/Debian
brew install frotz           # macOS

# 게임 실행
frotz zork1.zip
```

### Windows에서 실행:
1. Windows Frotz 다운로드: https://www.davidkinder.co.uk/frotz.html
2. zork1.zip 파일을 Frotz로 열기

## 🔨 소스에서 빌드하기 (한국어 번역 반영)

한국어 번역을 반영하려면 소스 코드를 다시 컴파일해야 합니다.

### 필요 사항:
- **ZILF** (Zork Implementation Language Frontend)
  - 공식 사이트: https://zilf.io
  - GitHub 릴리스: https://github.com/taradinoc/zilf/releases
  - 최신 버전: 0.11.1
  - .NET 6.0+ 필요

### 방법 1: 자동 빌드 스크립트

```bash
# 빌드 스크립트 실행
./build.sh
```

빌드가 성공하면 `zork1_korean.z3` 파일이 생성됩니다.

### 방법 2: 수동 빌드

```bash
# 1. ZILF로 컴파일 (.zil -> .zap)
zilf zork1.zil -o zork1_korean.zap

# 2. ZAPF로 어셈블 (.zap -> .z3)
zapf zork1_korean.zap

# 3. 실행
frotz zork1_korean.z3
```

### 방법 3: Docker 사용

```bash
# Docker 이미지 빌드
docker build -t zork-builder .

# 컨테이너에서 빌드
docker run -v $(pwd):/zork zork-builder bash -c "zilf zork1.zil -o zork1_korean.zap && zapf zork1_korean.zap"

# 생성된 파일 실행
frotz zork1_korean.z3
```

## 📋 빌드 프로세스 설명

1. **ZILF 컴파일러** (`zilf`)
   - ZIL 소스 파일(.zil)을 읽어서
   - ZAP 어셈블리 파일(.zap)로 변환

2. **ZAPF 어셈블러** (`zapf`)
   - ZAP 파일을 읽어서
   - Z-machine 바이트코드(.z3, .z5 등)로 변환

3. **Z-machine 인터프리터** (예: Frotz)
   - Z-machine 파일을 실행

## 🗂️ 파일 구조

```
zork1.zil          # 메인 파일 (다른 모든 파일을 포함)
├── gmacros.zil    # 매크로 정의
├── gsyntax.zil    # 문법 정의
├── 1dungeon.zil   # 던전 맵과 객체
├── gglobals.zil   # 전역 객체와 변수
├── gclock.zil     # 게임 시계
├── gmain.zil      # 메인 게임 루프
├── gparser.zil    # 명령어 파서
├── gverbs.zil     # 동사 함수들
└── 1actions.zil   # 게임 액션과 룸 설명
```

## 🌐 온라인에서 플레이

빌드 없이 바로 플레이하려면:
- https://iplayif.com/ (Parchment web player)
- zork1.zip 파일을 업로드

## ❓ 문제 해결

### "ZILF를 찾을 수 없음" 오류
```bash
# ZILF 최신 버전 다운로드 및 설치
# https://github.com/taradinoc/zilf/releases 에서 최신 버전 확인
wget https://github.com/taradinoc/zilf/releases/download/0.11.1/zilf-0.11.1-bin.zip
unzip zilf-0.11.1-bin.zip
export PATH="$PWD/zilf-0.11.1/bin:$PATH"
```

### 컴파일 오류
- ZIL 파일의 문법 오류를 확인
- 한국어 문자가 올바르게 인코딩되었는지 확인 (UTF-8)
- ZILF 버전 확인 (0.9 이상 권장)

### "frotz를 찾을 수 없음" 오류
```bash
# Ubuntu/Debian
sudo apt-get install frotz

# macOS
brew install frotz

# 또는 다른 인터프리터 사용:
# - Gargoyle: https://github.com/garglk/garglk
# - Lectrote: https://github.com/erkyrath/lectrote
```

## 📚 추가 리소스

- **ZILF 문서**: https://foss.heptapod.net/zilf/zilf/-/wikis/home
- **Z-machine 스펙**: https://www.inform-fiction.org/zmachine/standards/
- **Interactive Fiction Archive**: https://www.ifarchive.org/
