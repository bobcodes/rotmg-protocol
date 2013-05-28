package rotmg.experiment;

import java.util.SortedMap;

import rotmg.net.AvailableServers;
import rotmg.net.RotmgServer;

public class Main {

    /**
     * {AsiaEast=RotmgServer [name=AsiaEast, host=46.137.218.95, latitude=25.09, longtitude=121.56, usage=0.0], AsiaSouthEast=RotmgServer [name=AsiaSouthEast, host=46.137.247.5, latitude=1.35, longtitude=103.82, usage=0.0], EUEast=RotmgServer [name=EUEast, host=46.51.176.123, latitude=54.69, longtitude=25.28, usage=0.0], EUNorth=RotmgServer [name=EUNorth, host=176.34.240.11, latitude=59.33, longtitude=18.06, usage=0.0], EUNorth2=RotmgServer [name=EUNorth2, host=ec2-46-137-38-91.eu-west-1.compute.amazonaws.com, latitude=54.32, longtitude=10.12, usage=0.0], EUSouth=RotmgServer [name=EUSouth, host=ec2-46-137-138-25.eu-west-1.compute.amazonaws.com, latitude=53.0, longtitude=-8.0, usage=0.0], EUSouthWest=RotmgServer [name=EUSouthWest, host=176.34.240.126, latitude=48.86, longtitude=2.35, usage=0.0], EUWest=RotmgServer [name=EUWest, host=46.137.187.86, latitude=53.48, longtitude=-2.23, usage=0.0], EUWest2=RotmgServer [name=EUWest2, host=ec2-176-34-195-206.eu-west-1.compute.amazonaws.com, latitude=51.51, longtitude=-0.13, usage=0.0], USEast=RotmgServer [name=USEast, host=184.72.218.199, latitude=42.36, longtitude=-71.06, usage=0.0], USEast2=RotmgServer [name=USEast2, host=23.21.243.164, latitude=42.89, longtitude=-78.88, usage=0.0], USEast3=RotmgServer [name=USEast3, host=ec2-50-19-47-160.compute-1.amazonaws.com, latitude=39.95, longtitude=-75.16, usage=0.0], USMidWest=RotmgServer [name=USMidWest, host=107.22.218.252, latitude=38.63, longtitude=-90.2, usage=0.0], USMidWest2=RotmgServer [name=USMidWest2, host=ec2-174-129-56-145.compute-1.amazonaws.com, latitude=41.88, longtitude=-87.63, usage=0.0], USNorthWest=RotmgServer [name=USNorthWest, host=184.169.131.108, latitude=42.33, longtitude=-122.88, usage=0.0], USSouth=RotmgServer [name=USSouth, host=107.22.231.55, latitude=35.23, longtitude=-80.84, usage=0.0], USSouth2=RotmgServer [name=USSouth2, host=ec2-107-20-55-255.compute-1.amazonaws.com, latitude=-22.67, longtitude=-43.0, usage=0.0], USSouth3=RotmgServer [name=USSouth3, host=ec2-204-236-195-161.compute-1.amazonaws.com, latitude=-30.03, longtitude=-51.23, usage=0.0], USSouthWest=RotmgServer [name=USSouthWest, host=50.18.176.194, latitude=32.8, longtitude=-96.77, usage=0.0], USWest=RotmgServer [name=USWest, host=50.18.113.133, latitude=37.34, longtitude=-121.89, usage=0.0], USWest2=RotmgServer [name=USWest2, host=184.169.130.44, latitude=36.75, longtitude=-119.77, usage=0.0]}
     * RotmgServer [name=EUNorth2, host=ec2-46-137-38-91.eu-west-1.compute.amazonaws.com, latitude=54.32, longtitude=10.12, usage=0.0]
     */
	public static void main(String[] args) throws Exception {
        SortedMap<String, RotmgServer> availableServers = AvailableServers.getAvailableServers();
	    System.out.println(availableServers);
	    
	    RotmgServer eunorth2 = availableServers.get("EUNorth2");
        System.out.println(eunorth2);
    }
	
}
