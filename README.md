# Dash Custom Docsets and Cheatsheets

## Javadoc

1. Download `javadocset` binary linked from the GitHub [repo](https://github.com/Kapeli/javadocset) and save somewhere on `$PATH`

## WPILib Java Docset

1. Download the latest version of the `allwpilib` library source from GitHub releases [page](https://github.com/wpilibsuite/allwpilib/releases)
2. Run `./gradlew generateJavaDocs` in downloaded repo
3. Go into `docsets/wpilib` subdirectory
4. Edit `build.sh` to update `allwpilib` version
5. Run `build.sh`