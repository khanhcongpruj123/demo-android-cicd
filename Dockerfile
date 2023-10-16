# VM
FROM alvrme/alpine-android-base:latest-jdk17

# Copy source into vm to build
COPY ./ ./

# build apk & upload to app distribute
RUN ./gradlew assembleDebug appDistributionUploadDebug

