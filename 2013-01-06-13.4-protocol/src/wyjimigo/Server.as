package wyjimigo
{
[CLASS847]

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

      public var vuvyny:Tabyr;

      public var geruj:Number;

      public var jogypo:Boolean;

      public function setName(param1:String) : Server {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.name=param1;
         return this;
      }

      public function setAddress(param1:String) : Server {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.address=param1;
         return this;
      }

      public function setPort(param1:int) : Server {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.port=param1;
         return this;
      }

      public function setLatLong(param1:Number, param2:Number) : Server {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.vuvyny=new Tabyr(param1,param2);
         return this;
      }

      public function setUsage(param1:Number) : Server {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.geruj=param1;
         return this;
      }

      public function setIsAdminOnly(param1:Boolean) : Server {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jogypo=param1;
         return this;
      }

      public function priority() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.jogypo)
         {
            return 2;
         }
         if(this.hibav())
         {
            return 1;
         }
         return 0;
      }

      public function hibav() : Boolean {
         return this.geruj>=0.66;
      }

      public function vifam() : Boolean {
         return this.geruj>=1;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "["+this.name+": "+this.address+":"+this.port+":"+this.vuvyny+":"+this.geruj+":"+this.jogypo+"]";
      }
   }
[/CLASS]
}