#!/usr/bin/bash

pushd ../..

for q in 0.6b 1.7b; do
  for t in q8_0 f16; do
    for ref in zhangmz huangsl kangxi weixb; do
      ./build/qwen3-tts-cli -m models --tts-model qwen3-tts-${q}-${t}.gguf -r ./docs/zh/ref_${ref}.wav -t "一支穿云箭，千军万马来相见。" -o ./docs/zh/output_${ref}_t1_${q}_${t}.wav
    done
  done
done

for q in 0.6b 1.7b; do
  for t in q8_0 f16; do
    for ref in zhangmz huangsl kangxi weixb; do
      ./build/qwen3-tts-cli -m models --tts-model qwen3-tts-${q}-${t}.gguf -r ./docs/zh/ref_${ref}.wav -t "春江潮水连海平，海上明月共潮生。" -o ./docs/zh/output_${ref}_t2_${q}_${t}.wav
    done
  done
done

popd

