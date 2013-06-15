package noniq
{
   import __AS3__.vec.Vector;


   public class Gyd extends Object
   {
      public function Gyd() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         new Vector.<int>(3)[0]=-1;
         new Vector.<int>(3)[1]=-1;
         new Vector.<int>(3)[2]=-1;
         this.vodypemo=new Vector.<int>(3);
         super();
         return;
      }

      public var vodypemo:Vector.<int>;

      public var quduk:String = null;

      public function clone() : Gyd {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Gyd = new Gyd();
         _loc1_.vodypemo=this.vodypemo.concat();
         _loc1_.quduk=this.quduk;
         return _loc1_;
      }

      public function isEmpty() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_<Cariwepy.cylojibo)
         {
            if(this.vodypemo[_loc1_]!=-1)
            {
               return false;
            }
            _loc1_++;
         }
         return true;
      }
   }

}