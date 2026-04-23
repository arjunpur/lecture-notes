# Diagram Roadmap

These notes should use diagrams when a visual makes a mathematical model easier to parse. Prefer one idea per figure, sparse labels, and captions that state the governing equation or invariant. Equations and derivations should remain LaTeX-native; use generated raster images for conceptual visuals that benefit from spatial intuition.

## Implemented Assets

All roadmap diagrams are now covered by generated raster assets in `figures/`. Closely related diagrams are grouped into multi-panel plates to keep the notes concise.

| Asset | Roadmap diagrams covered |
| --- | --- |
| `mns-abstraction-levels.png` | Abstraction ladder |
| `mns-perceptron-geometry.png` | Perceptron geometry |
| `mns-learning-memory.png` | Hebbian memory signal and crosstalk; sparse Willshaw storage |
| `mns-receptive-field-models.png` | Linear-nonlinear model; simple versus complex cell |
| `mns-nernst-balance.png` | Drift-diffusion balance |
| `mns-lif-fi.png` | Leaky integrate-and-fire mechanism; `f-I` curve |
| `mns-hh-spike-refractory.png` | Spike conductance sequence; refractory mechanism |
| `mns-single-channel-currents.png` | Markov channel ensemble; delayed firing and adaptation currents |
| `mns-1d-phase-bifurcation.png` | Phase line and potential landscape; saddle-node threshold |
| `mns-2d-phase-plane.png` | Nullclines and vector field; limit cycle geometry |
| `mns-excitability-types.png` | Type I versus Type II excitability |
| `mns-cable-theory.png` | Spatial filtering in a passive cable |
| `mns-rall-branching-attenuation.png` | Rall equivalent cylinder; direction-dependent attenuation |
| `mns-compartment-myelination.png` | Compartmental discretization; saltatory conduction |
| `mns-network-modes-attractors.png` | Recurrent eigenmodes; ring attractor bump; winner-take-all rectification |
| `mns-stochastic-spiking.png` | Point-process views of variability; renewal versus history-dependent spiking |

| Priority | Chapter | Diagram | Mathematical point | Visual brief |
| --- | --- | --- | --- | --- |
| Added | 1. Simple Units | Abstraction ladder | A neural model is a controlled projection from biophysics to computation. | Four layers from ion channels to behavior, with arrows showing which variables are kept or marginalized. |
| High | 1. Simple Units | Perceptron geometry | The sign of `w dot x - theta` partitions input space by a hyperplane. | Two-dimensional input plane with decision boundary, weight vector normal to the boundary, margin, and example points. |
| High | 2. Learning | Hebbian memory signal and crosstalk | Retrieval decomposes into desired signal plus interference noise; capacity follows from noise scale. | Stored pattern aligned with a weight vector, plus many weak random crosstalk arrows adding to a Gaussian cloud. |
| Medium | 2. Learning | Sparse Willshaw storage | Sparse binary patterns trade density for reduced false positives. | Bipartite input-output neurons, active subsets, binary synapses switched on only for coactive pairs. |
| High | 3. Visual Receptive Fields | Linear-nonlinear model | `r(t) = F(<D, s> + r_0)` separates filtering from spiking nonlinearity. | Stimulus patch enters a space-time filter, scalar projection passes through rectifying nonlinearity, output rate emerges. |
| High | 3. Visual Receptive Fields | Simple versus complex cell | Quadrature-pair energy removes phase while preserving orientation/frequency tuning. | Two Gabor filters at 90-degree phase offset feeding square-and-sum energy stage. |
| High | 4. Membrane Potential | Drift-diffusion balance | Nernst equilibrium is the voltage where electrical and chemical flux cancel. | Membrane with ion concentration gradient, electric field arrow opposing diffusion, and reversal potential label. |
| High | 5. Ion Channels and LIF | Leaky integrate-and-fire mechanism | Subthreshold dynamics are linear relaxation with threshold-reset nonlinearity. | Voltage trace approaching threshold under constant input, reset, refractory gap, and corresponding phase-line sketch. |
| Medium | 5. Ion Channels and LIF | `f-I` curve | Firing rate is the inverse first-passage time of deterministic voltage flow. | Current axis versus firing-rate curve with rheobase and asymptotic high-current region. |
| High | 6. Hodgkin-Huxley | Spike conductance sequence | The spike follows fast sodium activation, sodium inactivation, then delayed potassium activation. | Aligned time traces for voltage, `m`, `h`, `n`, sodium conductance, and potassium conductance. |
| Medium | 6. Hodgkin-Huxley | Refractory mechanism | Reduced `h` and elevated `n` shift excitability after a spike. | Post-spike timeline showing absolute and relative refractory windows mapped to channel availability. |
| High | 7. Single Channels | Markov channel ensemble | A deterministic conductance is the law-of-large-numbers limit of stochastic channel states. | Many two-state channels flickering open/closed, summed into a smooth macroscopic open fraction. |
| Medium | 7. Single Channels | Delayed firing and adaptation currents | Slow currents reshape spike timing without changing the membrane equation structure. | Three panels for A-current delay, M-current adaptation, and calcium-driven bursting. |
| High | 8. One-Dimensional Phase Planes | Phase line and potential landscape | Stability is determined by the sign of `F'(x*)`; bifurcation changes fixed-point count. | Phase line with stable/unstable points paired with a tilted potential landscape. |
| High | 8. One-Dimensional Phase Planes | Saddle-node threshold | Spike threshold can be an unstable equilibrium rather than a fixed voltage rule. | Stable rest and unstable threshold coalescing as injected current increases. |
| High | 9. Two-Dimensional Phase Planes | Nullclines and vector field | Fixed points occur at nullcline intersections; local dynamics follow Jacobian eigenvalues. | `V` nullcline, recovery nullcline, arrows, fixed point, and nearby eigenvector directions. |
| High | 9. Two-Dimensional Phase Planes | Limit cycle geometry | Repetitive spiking is a closed attracting orbit in state space. | Phase-plane loop with slow and fast segments annotated. |
| Added | 10. Excitability Types | Type I versus Type II excitability | SNIC onset gives arbitrarily low frequency; Hopf onset gives finite onset frequency. | Side-by-side phase portraits and `f-I` curves for integrator and resonator. |
| Added | 11. Cable Theory | Spatial filtering in a passive cable | Voltage satisfies a diffusion-leak equation with exponential length scale. | Dendritic cable, equivalent RC ladder, and decaying voltage profile. |
| High | 12. Cable Branching | Rall equivalent cylinder | The `3/2` power law preserves input impedance across branch points. | Parent branch splitting into daughters with radii labels and the equivalent single cylinder. |
| Medium | 12. Cable Branching | Direction-dependent attenuation | Somatopetal and somatofugal signals see different impedance loads. | Same dendritic tree with arrows from soma to tip and tip to soma, with different attenuation labels. |
| High | 13. Compartments and Myelination | Compartmental discretization | The cable PDE becomes coupled ODEs after spatial discretization. | Cable divided into compartments with axial conductances and membrane capacitors. |
| High | 13. Compartments and Myelination | Saltatory conduction | Myelin increases length constant and reduces capacitance so spikes regenerate at nodes. | Myelinated axon with nodes of Ranvier, local current loops, and speed scaling annotation. |
| High | 14. Network Models | Recurrent eigenmodes | Linear dynamics amplify or decay input components according to eigenvalues. | Input vector decomposed into eigenvectors, each mode tagged by its eigenvalue and time course. |
| High | 14. Network Models | Ring attractor bump | A continuous family of stable bumps stores an angular variable. | Neurons arranged on a circle with a localized activity bump and circular shift symmetry. |
| Medium | 14. Network Models | Winner-take-all rectification | Nonlinearity turns graded amplification into selection. | Competing mode amplitudes before and after rectifying recurrent dynamics. |
| High | 15. Stochastic Spiking | Point-process views of variability | Raster, PSTH, ISI distribution, and Fano factor are different summaries of the same spike train process. | One spike-train dataset displayed as raster, time-varying rate, ISI histogram, and count-variance plot. |
| Medium | 15. Stochastic Spiking | Renewal versus history-dependent spiking | Conditional intensity encodes how recent spikes reshape instantaneous firing probability. | Hazard function before and after a spike, showing refractory suppression and recovery. |

Suggested generation order: complete the high-priority figures first for chapters 2, 3, 4, 5, 6, 8, 9, 12, 13, 14, and 15, then use the medium-priority figures only where the surrounding prose still feels too abstract.
