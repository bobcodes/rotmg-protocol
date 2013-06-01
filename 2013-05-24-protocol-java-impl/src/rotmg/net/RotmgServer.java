/*
The MIT License (MIT)

Copyright (c) 2013 bobcodes

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 */
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
