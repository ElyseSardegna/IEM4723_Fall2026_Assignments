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
    # dir .\data
    # git add data/regression_coefficients.csv
    # cd C:\infosys\IEM4723_Fall2026_Assignments\assignment1
    # git add docker_commands.sh

#Question 3
    #notepad .\Dockerfile
    #Given below is a Dockerfile that can be used to create a runtime environment for a simple linear regression example

        #TODO: replace this with the prior image generated from question 1
    #FROM linear-regression-app:latest

    #WORKDIR /home/iem4723/

    #COPY ./LogisticRegressor.py /home/iem4723/LogisticRegressor.py

        #TODO: write the command here to run LogisticRegressor.py, HINT you might want to look at CMD ["python3", "your-filename.py"]
    #CMD ["python3", "LogisticRegressor.py"]

docker build -t logistic_regression_layered:latest .
docker run --name logistic_regression_app --volume "C:\infosys\IEM4723_Fall2026_Assignments\assignment1\layering\data:/home/iem4723/data" logistic_regression_layered:latest
    # git add layering/Dockerfile
    # git add data/logistic_regression_coefficients.csv

# Question 4
cd C:\infosys\IEM4723_Fall2026_Assignments\assignment1\port_listening
docker run --name port_listening_app --publish 3333:8000 -d port_listening_app:latest
