# VM
FROM cimg/android:2023.10

# Copy source into vm to build
COPY ./ ./

# build apk & upload to app distribute
RUN ./gradlew assembleDebug appDistributionUploadDebug

