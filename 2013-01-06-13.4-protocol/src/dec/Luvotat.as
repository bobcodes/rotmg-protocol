package dec
{
[CLASS1631]   import __AS3__.vec.Vector;


   public class Luvotat extends Object
   {
      public function Luvotat() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         new Vector.<int>(3)[0]=-1;
         new Vector.<int>(3)[1]=-1;
         new Vector.<int>(3)[2]=-1;
         this.lakejuzyg=new Vector.<int>(3);
         super();
         return;
      }

      public var lakejuzyg:Vector.<int>;

      public var semes:String = null;

      public function clone() : Luvotat {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Luvotat = new Luvotat();
         _loc1_.lakejuzyg=this.lakejuzyg.concat();
         _loc1_.semes=this.semes;
         return _loc1_;
      }

      public function isEmpty() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_<Duj.rela)
         {
            if(this.lakejuzyg[_loc1_]!=-1)
            {
               return false;
            }
            _loc1_++;
         }
         return true;
      }
   }
[/CLASS]
}