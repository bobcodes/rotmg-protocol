package rotmg.net;

import java.io.IOException;
import java.util.SortedMap;
import java.util.TreeMap;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import rotmg.config.UserConfig;

/**
 * <Chars nextCharId="1" maxNumChars="1">
 *   <Account><Credits>50</Credits>
 *   <NextCharSlotPrice>600</NextCharSlotPrice>
 *   <AccountId>-1</AccountId>
 *   <Name>Lauk</Name>
 *   <BeginnerPackageTimeLeft>604800</BeginnerPackageTimeLeft>
 *   <IsAgeVerified>0</IsAgeVerified>
 *   <isFirstDeath />
 *   <Stats>
 *     <BestCharFame>0</BestCharFame>
 *     <TotalFame>0</TotalFame>
 *     <Fame>0</Fame>
 *   </Stats>
 * </Account>
 * <News>
 *   <Item><Icon>news</Icon><Title>RealmCast Ep.7</Title><TagLine>click here to listen</TagLine>
 *     <Link>https://forums.wildshadow.com/node/161897</Link><Date>1353042667</Date>
 *   </Item>
 *   <Item><Icon>news</Icon><Title>RealmCast Ep. 7 is Live!</Title><TagLine>Listen to it here!</TagLine>
 *     <Link>https://forums.wildshadow.com/node/161897</Link><Date>1353029018</Date>
 *   </Item>
 *   <Item><Icon>news</Icon><Title>Release 5</Title><TagLine></TagLine><Link>https://forums.wildshadow.com/node/161601</Link><Date>1352942521</Date></Item>
 *   <Item><Icon>news</Icon><Title>Resolving the Item Hacking</Title><TagLine>click for more info</TagLine><Link>https://forums.wildshadow.com/node/158717</Link><Date>1352163524</Date></Item>
 *   <Item><Icon>news</Icon><Title>Hurricane Sandy Relief Charity</Title><TagLine>click for more info</TagLine><Link>https://forums.wildshadow.com/node/156750</Link><Date>1351812983</Date></Item>
 *   <Item><Icon>news</Icon><Title>Realm 4.0 Update!</Title><TagLine>click for more info</TagLine><Link>https://forums.wildshadow.com/node/156789</Link><Date>1351812872</Date></Item>
 *   <Item><Icon>news</Icon><Title>Halloween Nexus!</Title><TagLine>click here for more info</TagLine><Link>https://forums.wildshadow.com/node/154700</Link><Date>1351288851</Date></Item>
 *   <Item><Icon></Icon><Title>Halloween Nexus Mini-!</Title><TagLine>click here for more info</TagLine><Link>https://forums.wildshadow.com/node/154700</Link><Date>1351288834</Date></Item>
 *   <Item><Icon>news</Icon><Title>Build 3.0 is now LIVE!</Title><TagLine>click here for more info</TagLine><Link>https://forums.wildshadow.com/node/154074</Link><Date>1351182052</Date></Item>
 *   <Item><Icon></Icon><Title>--RealmCast Ep6 is Live!--</Title><TagLine>Check it out on the Forums</TagLine><Link>https://forums.wildshadow.com/node/152538</Link><Date>1350671494</Date></Item>
 * </News>
 * <Servers>
 *   <Server><Name>USWest</Name><DNS>50.18.113.133</DNS><Lat>37.34</Lat><Long>-121.89</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>USMidWest</Name><DNS>107.22.218.252</DNS><Lat>38.63</Lat><Long>-90.20</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>EUWest</Name><DNS>46.137.187.86</DNS><Lat>53.48</Lat><Long>-2.23</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>USEast</Name><DNS>184.72.218.199</DNS><Lat>42.36</Lat><Long>-71.06</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>AsiaSouthEast</Name><DNS>46.137.247.5</DNS><Lat>1.35</Lat><Long>103.82</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>USSouth</Name><DNS>107.22.231.55</DNS><Lat>35.23</Lat><Long>-80.84</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>USSouthWest</Name><DNS>50.18.176.194</DNS><Lat>32.80</Lat><Long>-96.77</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>EUEast</Name><DNS>46.51.176.123</DNS><Lat>54.69</Lat><Long>25.28</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>EUNorth</Name><DNS>176.34.240.11</DNS><Lat>59.33</Lat><Long>18.06</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>EUSouthWest</Name><DNS>176.34.240.126</DNS><Lat>48.86</Lat><Long>2.35</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>USEast3</Name><DNS>ec2-50-19-47-160.compute-1.amazonaws.com</DNS><Lat>39.95</Lat><Long>-75.16</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>USWest2</Name><DNS>184.169.130.44</DNS><Lat>36.75</Lat><Long>-119.77</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>USMidWest2</Name><DNS>ec2-174-129-56-145.compute-1.amazonaws.com</DNS><Lat>41.88</Lat><Long>-87.63</Long><Usage>0.00</Usage></Server
 *   <Server><Name>USEast2</Name><DNS>23.21.243.164</DNS><Lat>42.89</Lat><Long>-78.88</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>USNorthWest</Name><DNS>184.169.131.108</DNS><Lat>42.33</Lat><Long>-122.88</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>USSouth2</Name><DNS>ec2-107-20-55-255.compute-1.amazonaws.com</DNS><Lat>-22.67</Lat><Long>-43.00</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>AsiaEast</Name><DNS>46.137.218.95</DNS><Lat>25.09</Lat><Long>121.56</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>USSouth3</Name><DNS>ec2-204-236-195-161.compute-1.amazonaws.com</DNS><Lat>-30.03</Lat><Long>-51.23</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>EUNorth2</Name><DNS>ec2-46-137-38-91.eu-west-1.compute.amazonaws.com</DNS><Lat>54.32</Lat><Long>10.12</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>EUWest2</Name><DNS>ec2-176-34-195-206.eu-west-1.compute.amazonaws.com</DNS><Lat>51.51</Lat><Long>-0.13</Long><Usage>0.00</Usage></Server>
 *   <Server><Name>EUSouth</Name><DNS>ec2-46-137-138-25.eu-west-1.compute.amazonaws.com</DNS><Lat>53.00</Lat><Long>-8.00</Long><Usage>0.00</Usage></Server>
 * </Servers>
 * <Lat>0.0</Lat><Long>0.0</Long>
 * <ClassAvailabilityList><ClassAvailability id="Rogue">available</ClassAvailability><ClassAvailability id="Assassin">available</ClassAvailability><ClassAvailability id="Huntress">available</ClassAvailability><ClassAvailability id="Mystic">available</ClassAvailability><ClassAvailability id="Trickster">available</ClassAvailability><ClassAvailability id="Sorcerer">available</ClassAvailability><ClassAvailability id="Ninja">unavailable</ClassAvailability><ClassAvailability id="Archer">available</ClassAvailability><ClassAvailability id="Wizard">available</ClassAvailability><ClassAvailability id="Priest">available</ClassAvailability><ClassAvailability id="Necromancer">available</ClassAvailability><ClassAvailability id="Warrior">available</ClassAvailability><ClassAvailability id="Knight">available</ClassAvailability><ClassAvailability id="Paladin">available</ClassAvailability></ClassAvailabilityList><ItemCosts><ItemCost type="834" purchasable="1" expires="0">500</ItemCost><ItemCost type="835" purchasable="1" expires="0">300</ItemCost><ItemCost type="836" purchasable="1" expires="0">500</ItemCost><ItemCost type="837" purchasable="1" expires="0">300</ItemCost><ItemCost type="838" purchasable="1" expires="0">500</ItemCost><ItemCost type="839" purchasable="1" expires="0">500</ItemCost><ItemCost type="840" purchasable="1" expires="0">500</ItemCost><ItemCost type="841" purchasable="1" expires="0">500</ItemCost><ItemCost type="842" purchasable="1" expires="0">500</ItemCost><ItemCost type="843" purchasable="1" expires="0">500</ItemCost><ItemCost type="844" purchasable="1" expires="0">500</ItemCost><ItemCost type="845" purchasable="1" expires="0">500</ItemCost><ItemCost type="846" purchasable="1" expires="0">500</ItemCost><ItemCost type="847" purchasable="1" expires="0">500</ItemCost><ItemCost type="848" purchasable="1" expires="0">500</ItemCost><ItemCost type="849" purchasable="1" expires="0">500</ItemCost><ItemCost type="850" purchasable="0" expires="1">900</ItemCost><ItemCost type="851" purchasable="0" expires="1">900</ItemCost><ItemCost type="852" purchasable="1" expires="0">500</ItemCost><ItemCost type="853" purchasable="1" expires="0">500</ItemCost><ItemCost type="854" purchasable="1" expires="0">500</ItemCost><ItemCost type="855" purchasable="1" expires="0">500</ItemCost></ItemCosts></Chars>
 * 
 * {AsiaEast=RotmgServer [name=AsiaEast, host=46.137.218.95, latitude=25.09, longtitude=121.56, usage=0.0],
 * AsiaSouthEast=RotmgServer [name=AsiaSouthEast, host=46.137.247.5, latitude=1.35, longtitude=103.82, usage=0.0],
 * EUEast=RotmgServer [name=EUEast, host=46.51.176.123, latitude=54.69, longtitude=25.28, usage=0.0],
 * EUNorth=RotmgServer [name=EUNorth, host=176.34.240.11, latitude=59.33, longtitude=18.06, usage=0.0],
 * EUNorth2=RotmgServer [name=EUNorth2, host=ec2-46-137-38-91.eu-west-1.compute.amazonaws.com, latitude=54.32, longtitude=10.12, usage=0.0],
 * EUSouth=RotmgServer [name=EUSouth, host=ec2-46-137-138-25.eu-west-1.compute.amazonaws.com, latitude=53.0, longtitude=-8.0, usage=0.0],
 * EUSouthWest=RotmgServer [name=EUSouthWest, host=176.34.240.126, latitude=48.86, longtitude=2.35, usage=0.0],
 * EUWest=RotmgServer [name=EUWest, host=46.137.187.86, latitude=53.48, longtitude=-2.23, usage=0.0],
 * EUWest2=RotmgServer [name=EUWest2, host=ec2-176-34-195-206.eu-west-1.compute.amazonaws.com, latitude=51.51, longtitude=-0.13, usage=0.0],
 * USEast=RotmgServer [name=USEast, host=184.72.218.199, latitude=42.36, longtitude=-71.06, usage=0.0],
 * USEast2=RotmgServer [name=USEast2, host=23.21.243.164, latitude=42.89, longtitude=-78.88, usage=0.0],
 * USEast3=RotmgServer [name=USEast3, host=ec2-50-19-47-160.compute-1.amazonaws.com, latitude=39.95, longtitude=-75.16, usage=0.0],
 * USMidWest=RotmgServer [name=USMidWest, host=107.22.218.252, latitude=38.63, longtitude=-90.2, usage=0.0],
 * USMidWest2=RotmgServer [name=USMidWest2, host=ec2-174-129-56-145.compute-1.amazonaws.com, latitude=41.88, longtitude=-87.63, usage=0.0],
 * USNorthWest=RotmgServer [name=USNorthWest, host=184.169.131.108, latitude=42.33, longtitude=-122.88, usage=0.0],
 * USSouth=RotmgServer [name=USSouth, host=107.22.231.55, latitude=35.23, longtitude=-80.84, usage=0.0],
 * USSouth2=RotmgServer [name=USSouth2, host=ec2-107-20-55-255.compute-1.amazonaws.com, latitude=-22.67, longtitude=-43.0, usage=0.0],
 * USSouth3=RotmgServer [name=USSouth3, host=ec2-204-236-195-161.compute-1.amazonaws.com, latitude=-30.03, longtitude=-51.23, usage=0.0],
 * USSouthWest=RotmgServer [name=USSouthWest, host=50.18.176.194, latitude=32.8, longtitude=-96.77, usage=0.0],
 * USWest=RotmgServer [name=USWest, host=50.18.113.133, latitude=37.34, longtitude=-121.89, usage=0.0],
 * USWest2=RotmgServer [name=USWest2, host=184.169.130.44, latitude=36.75, longtitude=-119.77, usage=0.0]}
 * RotmgServer [name=EUNorth2, host=ec2-46-137-38-91.eu-west-1.compute.amazonaws.com, latitude=54.32, longtitude=10.12, usage=0.0]
 * 
 * @author bobcodes
 */
public class AvailableServers {
    
    
    public static SortedMap<String,RotmgServer> getAvailableServers() throws Exception {
        SortedMap<String,RotmgServer> availableServers = new TreeMap<>();
        
        DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
        
        HttpClient client = new HttpClient();
        PostMethod post = makePost();
        int responseCode = client.executeMethod(post);
        if(responseCode != HttpStatus.SC_OK) {
            throw new IOException("got back reponse code: " + responseCode);
        }
        
        Document doc = dBuilder.parse(post.getResponseBodyAsStream());
        doc.getDocumentElement().normalize();
        NodeList nList = doc.getElementsByTagName("Server");
        for (int i = 0; i < nList.getLength(); i++) {
            RotmgServer server =  parseServer(nList.item(i));
            availableServers.put(server.getName(), server);
        }
        
        return availableServers;
    }
    
    /**
     * We are required to provide this post data with this request, otherwise
     * the request will fail. With too many failures, this method will
     * begin to return "<Error>LoginError.tooManyFails</Error>"
     *       
     * game_net rotmg
     * ignore  9858
     * game_net_user_id    
     * do_login    true
     * play_platform   rotmg
     * guid    <guid>
     * password    
     * @return
     */
    private static PostMethod makePost() {
        PostMethod post = new PostMethod("https://realmofthemadgod.appspot.com/char/list");
        post.addParameter(new NameValuePair("game_net", "rotmg"));
        post.addParameter(new NameValuePair("ignore", "9193"));
        post.addParameter(new NameValuePair("game_net_user_id", ""));
        post.addParameter(new NameValuePair("do_login", "true"));
        post.addParameter(new NameValuePair("play_platform", "rotmg"));
        if(UserConfig.GUEST_GUID != null) {
            post.addParameter(new NameValuePair("guid", UserConfig.GUEST_GUID));
        }
        post.addParameter(new NameValuePair("password", ""));
        return post;
    }
    
    /**
     * <Server><Name>EUNorth2</Name><DNS>ec2-46-137-38-91.eu-west-1.compute.amazonaws.com</DNS><Lat>54.32</Lat><Long>10.12</Long><Usage>0.00</Usage></Server>
     */
    private static RotmgServer parseServer(Node node) throws Exception {
        Element element = (Element) node;
        
        return new RotmgServer(
                getAttribute(element, "Name"),
                getAttribute(element, "DNS"),
                Double.parseDouble(getAttribute(element, "Lat")),
                Double.parseDouble(getAttribute(element, "Long")),
                Double.parseDouble(getAttribute(element, "Usage")));
    }
    
    private static String getAttribute(Element element, String name) {
        return element.getElementsByTagName(name).item(0).getTextContent();
    }
    
    private AvailableServers() {
        
    }
}
