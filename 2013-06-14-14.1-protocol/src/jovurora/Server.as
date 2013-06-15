package jovurora
{


   public class Server extends Object
   {
      public function Server() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var name:String;

      public var address:String;

      public var port:int;

      public var fitygoqy:Cyp;

      public var pusacub:Number;

      public var funareba:Boolean;

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
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.port=param1;
         return this;
      }

      public function setLatLong(param1:Number, param2:Number) : Server {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.fitygoqy=new Cyp(param1,param2);
         return this;
      }

      public function setUsage(param1:Number) : Server {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pusacub=param1;
         return this;
      }

      public function setIsAdminOnly(param1:Boolean) : Server {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.funareba=param1;
         return this;
      }

      public function priority() : int {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.funareba)
         {
            return 2;
         }
         if(this.duz())
         {
            return 1;
         }
         return 0;
      }

      public function duz() : Boolean {
         return this.pusacub>=0.66;
      }

      public function paqoty() : Boolean {
         return this.pusacub>=1;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "["+this.name+": "+this.address+":"+this.port+":"+this.fitygoqy+":"+this.pusacub+":"+this.funareba+"]";
      }
   }

}