package aaa.rotmg.net
{


   public class Server extends Object
   {
      public function Server() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var name:String;

      public var address:String;

      public var port:int;

      public var latLong:Mile;

      public var serverUsage:Number;

      public var isAdminOnly:Boolean;

      public function setName(param1:String) : Server {
         this.name=param1;
         return this;
      }

      public function setAddress(param1:String) : Server {
         this.address=param1;
         return this;
      }

      public function setPort(param1:int) : Server {
         this.port=param1;
         return this;
      }

      public function setLatLong(lat:Number, long:Number) : Server {
         this.latLong=new Mile(lat,long);
         return this;
      }

      public function setUsage(serverUsage:Number) : Server {
         this.serverUsage=serverUsage;
         return this;
      }

      public function setIsAdminOnly(isAdminOnly:Boolean) : Server {
         this.isAdminOnly=isAdminOnly;
         return this;
      }

      public function priority() : int {
         if(this.isAdminOnly)
         {
            return 2;
         }
         if(this.isServerCrowded())
         {
            return 1;
         }
         return 0;
      }

      public function isServerCrowded() : Boolean {
         return this.serverUsage>=0.66;
      }

      public function isServerFull() : Boolean {
         return this.serverUsage>=1;
      }

      public function toString() : String {
         return "["+this.name+": "+this.address+":"+this.port+":"+this.latLong+":"+this.serverUsage+":"+this.isAdminOnly+"]";
      }
   }

}