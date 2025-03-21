accelerate launch train.py \
  --model_name_or_path FacebookAI/roberta-large \
  --training_data_path /home/ec2-user/book_sum/gpt4o_mini_booksum_hallu_train_all.pickle \
  --testing_data_path /home/ec2-user/book_sum/gpt4o_booksum_hallu_test_all.pickle \
  --max_length 4096 \
  --per_device_train_batch_size 1 \
  --per_device_eval_batch_size 1 \
  --learning_rate 2e-6 \
  --num_train_epochs 200 \
  --output_dir trained_models/roberta_split_booksum_256_32_8_8192_64_2e6_pad_last_split_sent_encoder_train_1000_test_all_thres0.2 \
  --seed 42 \
  --split \
  --chunk_size 256 \
  --stride 256 \
  --num_chunks1 32 \
  --num_chunks2 8 \
  --maximal_text_length 8192 \
  --weight_decay 0.1 \
  --num_warmup_steps 1000 \
  --pad_last \
  --split_inputs \
  --with_tracking \
  --report_to wandb \
  --attention_encoder \
  --sent_length 64 \
  --split_sent
