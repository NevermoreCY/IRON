SCENE=$1

echo "start rendering surface for train set"
python render_surface.py --data_dir ./data_flashlight/${SCENE}/train \
                                 --out_dir ./exp_iron_stage2/${SCENE} \
                                 --neus_ckpt_fpath ./exp_iron_stage1/${SCENE}/checkpoints/ckpt_100000.pth \
                                 --num_iters 50001 --gamma_pred
echo "end rendering surface for train set"
# render test set
echo "start rendering surface for test set"
python render_surface.py --data_dir ./data_flashlight/${SCENE}/test \
                                 --out_dir ./exp_iron_stage2/${SCENE} \
                                 --neus_ckpt_fpath ./exp_iron_stage1/${SCENE}/checkpoints/ckpt_100000.pth \
                                 --num_iters 50001 --gamma_pred --render_all
echo "end rendering surface for test set"
