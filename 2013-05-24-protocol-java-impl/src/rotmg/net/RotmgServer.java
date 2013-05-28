package rotmg.net;

import org.apache.commons.lang.builder.CompareToBuilder;

public class RotmgServer implements Comparable<RotmgServer>{
    
    private final String name;
    private final String host;
    private final double latitude;
    private final double longtitude;
    private final double usage;
    
    public RotmgServer(
            String name, String host, double latitude,
            double longtitude, double usage) {
        this.name = name;
        this.host = host;
        this.latitude = latitude;
        this.longtitude = longtitude;
        this.usage = usage;
    }
    
    public String getName() {
        return name;
    }
    public String getHost() {
        return host;
    }
    public double getLatitude() {
        return latitude;
    }
    public double getLongtitude() {
        return longtitude;
    }
    public double getUsage() {
        return usage;
    }
    
    @Override
    public int compareTo(RotmgServer other) {
        return new CompareToBuilder()
                    .append(this.name, other.name)
                    .toComparison();
    }
    
    @Override
    public String toString() {
        return "RotmgServer [name=" + name + ", host=" + host + ", latitude="
                + latitude + ", longtitude=" + longtitude + ", usage=" + usage
                + "]";
    }
    
}
