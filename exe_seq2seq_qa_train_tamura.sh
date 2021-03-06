CUDA_VISIBLE_DEVICES=1 python run_seq2seq_qa_tamura.py \
  --model_name_or_path google/mt5-base \
  --train_file ./dataset/train_knowhow/train_v2.5_mod_neo.json \
  --context_column context \
  --question_column question \
  --answer_column answers \
  --do_train True\
  --do_eval False\
  --do_predict False\
  --per_device_train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir ./mt5_trained_kh_2.0/ \
  --version_2_with_negative True \
  --predict_with_generate \
  --generation_max_length 384