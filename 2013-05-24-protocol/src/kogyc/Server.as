package kogyc
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

      public var kik:Mile;

      public var puq:Number;

      public var guhola:Boolean;

      public function setName(param1:String) : Server {
         var _loc2_:* = true;
         var _loc3_:* = false;
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
         this.kik=new Mile(param1,param2);
         return this;
      }

      public function setUsage(param1:Number) : Server {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.puq=param1;
         return this;
      }

      public function setIsAdminOnly(param1:Boolean) : Server {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.guhola=param1;
         return this;
      }

      public function priority() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.guhola)
         {
            return 2;
         }
         if(this.gulysuka())
         {
            return 1;
         }
         return 0;
      }

      public function gulysuka() : Boolean {
         return this.puq>=0.66;
      }

      public function jami() : Boolean {
         return this.puq>=1;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "["+this.name+": "+this.address+":"+this.port+":"+this.kik+":"+this.puq+":"+this.guhola+"]";
      }
   }

}