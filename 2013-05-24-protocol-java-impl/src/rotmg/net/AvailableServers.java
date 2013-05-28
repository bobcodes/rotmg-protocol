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
 * 
 * @author bobcodes
 */
public class AvailableServers {

    /**
     * Visit http://realmofthemadgod.appspot.com/ to determine this 
     */
    private static String GUEST_GUID = "<guid>";
    
    
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
     * TODO: have this method use a username and pass
     *       or to make a new GUID every request
     * 
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
        post.addParameter(new NameValuePair("ignore", "9858"));
        post.addParameter(new NameValuePair("game_net_user_id", ""));
        post.addParameter(new NameValuePair("do_login", "true"));
        post.addParameter(new NameValuePair("play_platform", "rotmg"));
        post.addParameter(new NameValuePair("guid", GUEST_GUID));
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
