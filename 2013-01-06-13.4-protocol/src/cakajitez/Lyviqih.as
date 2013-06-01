package cakajitez
{
[CLASS1897]   import flash.utils.ByteArray;
   import losiba.Executer;


   public class Lyviqih extends Object
   {
      public function Lyviqih(param1:String="", param2:Number=0) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.col=param2;
         this.key=param1;
         return;
      }

      public static function ciwygeruk(param1:ByteArray) : Lyviqih {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Lyviqih = new Lyviqih(param1.readUTF(),param1.readUnsignedInt());
         _loc2_.v=param1.readDouble();
         _loc2_.avg=param1.readDouble();
         return _loc2_;
      }

      private var quzypafof:Lycerimef;

      public var vepuso:String;

      private var vukozef:Boolean;

      public var key:String;

      public var col:Number;

      public var v:Number;

      public var avg:Number;

      public function setObject(param1:Object, param2:String) : Number {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.quzypafof=new Lycerimef(param1);
         this.vepuso=param2;
         this.vukozef=this.vepuso.search(new RegExp("[^\\w\\d]"))>=0;
         this.v=this.jomam();
         this.avg=this.v;
         return this.v;
      }

      public function get obj() : Object {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.quzypafof!=null?this.quzypafof.huke:undefined;
      }

      public function get prop() : String {
         return this.vepuso;
      }

      public function jomam() : Number {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.vukozef?Executer.rivaju(this.obj,this.vepuso):this.obj[this.vepuso];
      }

      public function setValue(param1:Number, param2:uint=0) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.v=param1;
         if(param2>0)
         {
            if(isNaN(this.avg))
            {
               this.avg=this.v;
            }
            else
            {
               this.avg=this.avg+(this.v-this.avg)/param2;
            }
         }
         return;
      }

      public function matib(param1:ByteArray) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeUTF(this.key);
         param1.writeUnsignedInt(this.col);
         param1.writeDouble(this.v);
         param1.writeDouble(this.avg);
         return;
      }
   }
[/CLASS]
}