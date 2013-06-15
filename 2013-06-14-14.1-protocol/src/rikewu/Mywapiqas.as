package rikewu
{
   import flash.utils.ByteArray;


   public class Mywapiqas extends Object
   {
      public function Mywapiqas(param1:String, param2:String, param3:int, param4:Boolean=false, param5:Boolean=false) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         super();
         this.text=param1;
         this.ch=param2;
         this.priority=param3;
         this.repeat=param4;
         this.html=param5;
         return;
      }

      public static function buwopena(param1:ByteArray) : Mywapiqas {
         var _loc2_:String = param1.readUTFBytes(param1.readUnsignedInt());
         var _loc3_:String = param1.readUTF();
         var _loc4_:int = param1.readInt();
         var _loc5_:Boolean = param1.readBoolean();
         return new Mywapiqas(_loc2_,_loc3_,_loc4_,_loc5_,true);
      }

      public var line:uint;

      public var text:String;

      public var ch:String;

      public var priority:int;

      public var repeat:Boolean;

      public var html:Boolean;

      public var time:uint;

      public var tyqa:String;

      public var tetur:String;

      public var zynyqe:String;

      public var next:Mywapiqas;

      public var meqyfubyw:Mywapiqas;

      public function kyby(param1:ByteArray) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(this.text);
         param1.writeUnsignedInt(_loc2_.length);
         param1.writeBytes(_loc2_);
         param1.writeUTF(this.ch);
         param1.writeInt(this.priority);
         param1.writeBoolean(this.repeat);
         return;
      }

      public function plainText() : String {
         return this.text.replace(new RegExp("<.*?>","g"),"").replace(new RegExp("&lt;","g"),"<").replace(new RegExp("&gt;","g"),">");
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "["+this.ch+"] "+this.plainText();
      }

      public function clone() : Mywapiqas {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Mywapiqas = new Mywapiqas(this.text,this.ch,this.priority,this.repeat,this.html);
         _loc1_.line=this.line;
         _loc1_.time=this.time;
         return _loc1_;
      }
   }

}