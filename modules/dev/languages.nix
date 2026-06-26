{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    (with dotnetCorePackages; combinePackages [
      sdk_10_0-bin
      aspnetcore_10_0-bin
      sdk_11_0-bin
      aspnetcore_11_0-bin
    ])

    jdk21
    gradle
    maven

		python311

    go_1_26
    gopls

    gnumake
    gcc
    pkg-config

		nodejs
		bun

		rustup

		mariadb.client

  ];

  environment.sessionVariables = {
    DOTNET_ROOT = "${pkgs.dotnetCorePackages.sdk_10_0-bin}";
    JAVA_HOME = "${pkgs.jdk21.home}";
    GRADLE_OPTS = "-Dorg.gradle.java.home=${pkgs.jdk21.home}";
  };
}
