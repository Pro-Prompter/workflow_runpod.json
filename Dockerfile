# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# Could not resolve unknown_registry node: RIFE VFI (no aux_id provided) - skipped
# Could not resolve unknown_registry node: CreateVideo (no aux_id provided) - skipped
# Could not resolve unknown_registry node: WanVideoTorchCompileSettings (no aux_id provided) - skipped
# Could not resolve unknown_registry node: WanVideoBlockSwap (no aux_id provided) - skipped
# Could not resolve unknown_registry node: WanVideoLoraSelect (no aux_id provided) - skipped
# Could not resolve unknown_registry node: WanVideoLoraSelect (duplicate) (no aux_id provided) - skipped
# Could not resolve unknown_registry node: WanVideoModelLoader (no aux_id provided) - skipped
# Could not resolve unknown_registry node: WanVideoModelLoader (duplicate) (no aux_id provided) - skipped
# Could not resolve unknown_registry node: WanVideoTextEmbedBridge (no aux_id provided) - skipped
# Could not resolve unknown_registry node: WanVideoSampler (no aux_id provided) - skipped
# Could not resolve unknown_registry node: WanVideoSampler (duplicate) (no aux_id provided) - skipped
# Could not resolve unknown_registry node: easy int (no aux_id provided) - skipped
# Could not resolve unknown_registry node: INTConstant (no aux_id provided) - skipped
# Could not resolve unknown_registry node: INTConstant (duplicate) (no aux_id provided) - skipped
# Could not resolve unknown_registry node: WanVideoImageToVideoEncode (no aux_id provided) - skipped
# Could not resolve unknown_registry node: WanVideoVAELoader (no aux_id provided) - skipped
# Could not resolve unknown_registry node: WanVideoDecode (no aux_id provided) - skipped

# download models into comfyui
RUN comfy model download --url https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors --relative-path models/vae --filename wan_2.1_vae.safetensors
# RUN # Could not find URL for rife47.pth
# RUN # Could not find URL for Wan2.2-Lightning_I2V-A14B-4steps-lora_LOW_fp16.safetensors
# RUN # Could not find URL for Wan2.2-Lightning_I2V-A14B-4steps-lora_HIGH_fp16.safetensors
# RUN # Could not find URL for Wan2.2_Remix_NSFW_i2v_14b_high_lighting_v2.0.safetensors
# RUN # Could not find URL for Wan2.2_Remix_NSFW_i2v_14b_low_lighting_v2.0.safetensors
# RUN # Could not find URL for nsfw_wan_umt5-xxl_fp8_scaled.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
