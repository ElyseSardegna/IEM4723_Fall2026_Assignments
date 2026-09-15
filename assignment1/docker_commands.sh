# Question 1
cd C:\infosys\IEM4723_Fall2026_Assignments\assignment1\regression_container
docker build -t linear-regression-app .
docker tag linear-regression-app elysesardega/linear-regression-app:v0.1.1
docker tag linear-regression-app elysesardega/linear-regression-app:v0.1.2
docker tag linear-regression-app elysesardegna/linear-regression-app:latest #made a mistake in tagging
docker push linear-regression-app elysesardegna/linear-regression-app:latest

# Question 2
cd C:\infosys\IEM4723_Fall2026_Assignments\assignment1\volume-mounting
docker build -t volume-mounting-app:latest .
docker run --name volume_mounting_app --volume "C:\infosys\IEM4723_Fall2026_Assignments\assignment1\volume-mounting\data:/home/iem4723/data" volume-mounting-app:latest python /home/iem4723/Regressor.py
git add data/regression_coefficients.csv
