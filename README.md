# CamomileView Drawing
Below see picture of flower geometry base points and angles being used for **paths** calculating
![PetalGeometry](https://github.com/vitaly-grinchik/AwardsCollectionApp/assets/118172851/e4266543-a1d2-4b10-892e-dcd5926e15ce)

### Descrption of **const** and **var** names corersponding to picture points and angles
- `private let centerRadiusRatio`
**r3** to **r1** ratio
  
- `private let controlRadiusRatio`
**r3** to **r2** ratio: thickness of a petal
  
- `let centralRadius`
**r1**
  
- `let curvatureRadius`
**r2** Radius of a circle at which control points for [Bezier Curves](https://en.wikipedia.org/wiki/B%C3%A9zier_curve) lie
  
- `let period = Int(360 / qtyOfPetals)`
Equal to **Alpha** angle - the pental period

- `let petalStart`
Point **a**

- `let petalEnd`
Point **b**

- `let control1`
Point **c1**

- `let control2`
Point **c2**

_Control points couple defines petal thickness and corresponds to hardcoded 30 degrees delta (±15 degrees) i.e. **±Beta** angle_
