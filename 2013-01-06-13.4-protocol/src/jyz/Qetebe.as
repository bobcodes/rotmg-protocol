package jyz
{
[CLASS1474]   import flash.utils.IDataInput;


   public class Qetebe extends Object
   {
      public function Qetebe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bil=new Tydo();
         super();
         return;
      }

      public var objectType_:int;

      public var bil:Tydo;

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.objectType_=param1.readShort();
         this.bil.parseFromInput(param1);
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "objectType_: "+this.objectType_+" status_: "+this.bil;
      }
   }
[/CLASS]
}