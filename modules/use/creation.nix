{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # VIDEO AND STREAMING
  	(pkgs.wrapOBS {
    	plugins = with obs-studio-plugins; [
      	wlrobs
				obs-vaapi
				obs-vkcapture
				obs-gstreamer
				obs-multi-rtmp
    	];
  	})

  	kdePackages.kdenlive

  	# AUDIO
  	easyeffects
  	lsp-plugins
  	deepfilternet

  	# DESIGN
  	gimp
  	inkscape
  	krita
  	blender
	];

  hardware.graphics = {
    extraPackages = with pkgs; [
      libva
      libva-vdpau-driver
      libvdpau-va-gl
      rocmPackages.clr.icd
    ];
  };
}
