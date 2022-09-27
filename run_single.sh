#SBATCH --mem=40G
#SBATCH --gres=gpu:1

source .env/bin/activate

python -u run.py \
  --data_path $inp_data \
  --model $model \
  --pred_len $pred_len \
  --loss $loss

echo "DONE"
