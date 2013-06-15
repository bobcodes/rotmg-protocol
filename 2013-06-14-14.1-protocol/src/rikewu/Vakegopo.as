package rikewu
{
   import flash.utils.ByteArray;
   import qifatubam.Executer;


   public class Vakegopo extends Object
   {
      public function Vakegopo(param1:String="", param2:Number=0) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.col=param2;
         this.key=param1;
         return;
      }

      public static function buwopena(param1:ByteArray) : Vakegopo {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vakegopo = new Vakegopo(param1.readUTF(),param1.readUnsignedInt());
         _loc2_.v=param1.readDouble();
         _loc2_.avg=param1.readDouble();
         return _loc2_;
      }

      private var wymifiris:Zacola;

      public var bunaluz:String;

      private var fenury:Boolean;

      public var key:String;

      public var col:Number;

      public var v:Number;

      public var avg:Number;

      public function setObject(param1:Object, param2:String) : Number {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.wymifiris=new Zacola(param1);
         this.bunaluz=param2;
         this.fenury=this.bunaluz.search(new RegExp("[^\\w\\d]"))>=0;
         this.v=this.hyjaqo();
         this.avg=this.v;
         return this.v;
      }

      public function get obj() : Object {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.wymifiris!=null?this.wymifiris.hed:undefined;
      }

      public function get prop() : String {
         return this.bunaluz;
      }

      public function hyjaqo() : Number {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.fenury?Executer.lew(this.obj,this.bunaluz):this.obj[this.bunaluz];
      }

      public function setValue(param1:Number, param2:uint=0) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
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

      public function kyby(param1:ByteArray) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeUTF(this.key);
         param1.writeUnsignedInt(this.col);
         param1.writeDouble(this.v);
         param1.writeDouble(this.avg);
         return;
      }
   }

}