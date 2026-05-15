import numpy as np

import fpsample


pc = np.array(
    [
        [0.0, 0.0, 0.0],
        [1.0, 0.0, 0.0],
        [0.0, 1.0, 0.0],
        [0.0, 0.0, 1.0],
        [1.0, 1.0, 1.0],
    ],
    dtype=np.float32,
)

for sampler in (
    lambda points: fpsample.fps_sampling(points, 3, start_idx=0),
    lambda points: fpsample.bucket_fps_kdtree_sampling(points, 3, start_idx=0),
    lambda points: fpsample.bucket_fps_kdline_sampling(points, 3, h=2, start_idx=0),
):
    idx = np.asarray(sampler(pc))
    assert idx.shape == (3,)
    assert len(set(idx.tolist())) == 3
    assert np.all((0 <= idx) & (idx < len(pc)))
