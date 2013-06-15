package dumavap
{
   import __AS3__.vec.Vector;
   import flash.utils.getQualifiedClassName;


   public class Gyfukiw extends Object implements Kowah
   {
      public function Gyfukiw(param1:Vector.<Class>, param2:Vector.<Class>, param3:Vector.<Class>) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         if(!param1||!param2||!param3)
         {
            throw ArgumentError("TypeFilter RotmgParameters can not be null");
         }
         else
         {
            this.hokup=param1;
            this.fibup=param2;
            this.kypetuze=param3;
            return;
         }
      }

      protected var hokup:Vector.<Class>;

      public function get rohel() : Vector.<Class> {
         return this.hokup;
      }

      protected var fibup:Vector.<Class>;

      public function get hib() : Vector.<Class> {
         return this.fibup;
      }

      protected var pur:String;

      public function get rokafu() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.pur=(this.pur)||(this.dic());
      }

      protected var kypetuze:Vector.<Class>;

      public function get hazuceza() : Vector.<Class> {
         return this.kypetuze;
      }

      public function matches(param1:*) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:uint = this.hokup.length;
         while(_loc2_--)
         {
            if(!(param1 is this.hokup[_loc2_]))
            {
               return false;
            }
         }
         _loc2_=this.kypetuze.length;
         while(_loc2_--)
         {
            if(param1 is this.kypetuze[_loc2_])
            {
               return false;
            }
         }
         if(this.fibup.length==0&&(this.hokup.length>0||this.kypetuze.length>0))
         {
            return true;
         }
         _loc2_=this.fibup.length;
         while(_loc2_--)
         {
            if(param1 is this.fibup[_loc2_])
            {
               return true;
            }
         }
         return false;
      }

      protected function raba(param1:Vector.<Class>) : Vector.<String> {
         var _loc6_:* = false;
         var _loc7_:* = true;
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
         _loc3_.sort(this.sipekoza);
         return _loc3_;
      }

      protected function dic() : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Vector.<String> = this.raba(this.rohel);
         var _loc2_:Vector.<String> = this.raba(this.hib);
         var _loc3_:Vector.<String> = this.raba(this.hazuceza);
         return "all of: "+_loc1_.toString()+", any of: "+_loc2_.toString()+", none of: "+_loc3_.toString();
      }

      protected function sipekoza(param1:String, param2:String) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1<param2)
         {
            return 1;
         }
         return -1;
      }
   }

}