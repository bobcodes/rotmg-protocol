package nafa
{
   import __AS3__.vec.Vector;


   public class Gutunul extends Object
   {
      public function Gutunul() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         new Vector.<int>(3)[0]=-1;
         new Vector.<int>(3)[1]=-1;
         new Vector.<int>(3)[2]=-1;
         this.qenozyk=new Vector.<int>(3);
         super();
         return;
      }

      public var qenozyk:Vector.<int>;

      public var damu:String = null;

      public function clone() : Gutunul {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Gutunul = new Gutunul();
         _loc1_.qenozyk=this.qenozyk.concat();
         _loc1_.damu=this.damu;
         return _loc1_;
      }

      public function isEmpty() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_<Himo.litewagi)
         {
            if(this.qenozyk[_loc1_]!=-1)
            {
               return false;
            }
            _loc1_++;
         }
         return true;
      }
   }

}