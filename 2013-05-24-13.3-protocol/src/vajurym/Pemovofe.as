package vajurym
{
   import flash.utils.ByteArray;
   import tobuc.Executer;


   public class Pemovofe extends Object
   {
      public function Pemovofe(param1:String="", param2:Number=0) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.col=param2;
         this.key=param1;
         return;
      }

      public static function tusigo(param1:ByteArray) : Pemovofe {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Pemovofe = new Pemovofe(param1.readUTF(),param1.readUnsignedInt());
         _loc2_.v=param1.readDouble();
         _loc2_.avg=param1.readDouble();
         return _loc2_;
      }

      private var pybu:Muhitu;

      public var zit:String;

      private var sycegili:Boolean;

      public var key:String;

      public var col:Number;

      public var v:Number;

      public var avg:Number;

      public function setObject(param1:Object, param2:String) : Number {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.pybu=new Muhitu(param1);
         this.zit=param2;
         this.sycegili=this.zit.search(new RegExp("[^\\w\\d]"))>=0;
         this.v=this.moriveh();
         this.avg=this.v;
         return this.v;
      }

      public function get obj() : Object {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.pybu!=null?this.pybu.firycynus:undefined;
      }

      public function get prop() : String {
         return this.zit;
      }

      public function moriveh() : Number {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.sycegili?Executer.megazisa(this.obj,this.zit):this.obj[this.zit];
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

      public function ponevyne(param1:ByteArray) : void {
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