package doganovide
{
[CLASS1797]   import __AS3__.vec.Vector;
   import flash.utils.getQualifiedClassName;


   public class Papy extends Object implements Symyniwe
   {
      public function Papy(param1:Vector.<Class>, param2:Vector.<Class>, param3:Vector.<Class>) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         if(!param1||!param2||!param3)
         {
            throw ArgumentError("TypeFilter parameters can not be null");
         }
         else
         {
            this.magipa=param1;
            this.sysymu=param2;
            this.vagojelik=param3;
            return;
         }
      }

      protected var magipa:Vector.<Class>;

      public function get piw() : Vector.<Class> {
         return this.magipa;
      }

      protected var sysymu:Vector.<Class>;

      public function get nehihis() : Vector.<Class> {
         return this.sysymu;
      }

      protected var varudovu:String;

      public function get qoza() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.varudovu=(this.varudovu)||(this.pufyfe());
      }

      protected var vagojelik:Vector.<Class>;

      public function get fas() : Vector.<Class> {
         return this.vagojelik;
      }

      public function matches(param1:*) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:uint = this.magipa.length;
         while(_loc2_--)
         {
            if(!(param1 is this.magipa[_loc2_]))
            {
               return false;
            }
         }
         _loc2_=this.vagojelik.length;
         while(_loc2_--)
         {
            if(param1 is this.vagojelik[_loc2_])
            {
               return false;
            }
         }
         if(this.sysymu.length==0&&(this.magipa.length>0||this.vagojelik.length>0))
         {
            return true;
         }
         _loc2_=this.sysymu.length;
         while(_loc2_--)
         {
            if(param1 is this.sysymu[_loc2_])
            {
               return true;
            }
         }
         return false;
      }

      protected function fymeju(param1:Vector.<Class>) : Vector.<String> {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         var _loc3_:Vector.<String> = new Vector.<String>(0);
         var _loc4_:uint = param1.length;
         var _loc5_:uint = 0;
         while(_loc5_<_loc4_)
         {
            _loc2_=getQualifiedClassName(param1[_loc5_]);
            _loc3_[_loc3_.length]=_loc2_;
            _loc5_++;
         }
         _loc3_.sort(this.dadoty);
         return _loc3_;
      }

      protected function pufyfe() : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Vector.<String> = this.fymeju(this.piw);
         var _loc2_:Vector.<String> = this.fymeju(this.nehihis);
         var _loc3_:Vector.<String> = this.fymeju(this.fas);
         return "all of: "+_loc1_.toString()+", any of: "+_loc2_.toString()+", none of: "+_loc3_.toString();
      }

      protected function dadoty(param1:String, param2:String) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1<param2)
         {
            return 1;
         }
         return -1;
      }
   }
[/CLASS]
}