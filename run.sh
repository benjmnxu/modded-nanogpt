export STAGGER_ENABLE=1
export STAGGER_DELAY_S=2.0
export STAGGER_WARMUP_STEPS=40
export STAGGER_MODE=forward_only    # or backward_noopt

export TIERED_EXIT_ENABLE=1
export TIERED_EXIT_BASE_STEPS=0
export TIERED_EXIT_STRIDE_STEPS=2

# optional diagnostics
export NCCL_DEBUG=INFO
export NCCL_DEBUG_SUBSYS=INIT,COLL

torchrun --standalone --nproc_per_node=8 train_gpt.py