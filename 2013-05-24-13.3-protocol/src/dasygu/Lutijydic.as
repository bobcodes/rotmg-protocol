package dasygu
{
   import __AS3__.vec.Vector;
   import flash.utils.getQualifiedClassName;


   public class Lutijydic extends Object implements Ceseto
   {
      public function Lutijydic(param1:Vector.<Class>, param2:Vector.<Class>, param3:Vector.<Class>) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         if(!param1||!param2||!param3)
         {
            throw ArgumentError("TypeFilter parameters can not be null");
         }
         else
         {
            this.keqojyn=param1;
            this.jof=param2;
            this.gyvomi=param3;
            return;
         }
      }

      protected var keqojyn:Vector.<Class>;

      public function get nakijide() : Vector.<Class> {
         return this.keqojyn;
      }

      protected var jof:Vector.<Class>;

      public function get gajycih() : Vector.<Class> {
         return this.jof;
      }

      protected var guduh:String;

      public function get hehijakyz() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.guduh=(this.guduh)||(this.nuq());
      }

      protected var gyvomi:Vector.<Class>;

      public function get pak() : Vector.<Class> {
         return this.gyvomi;
      }

      public function matches(param1:*) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:uint = this.keqojyn.length;
         while(_loc2_--)
         {
            if(!(param1 is this.keqojyn[_loc2_]))
            {
               return false;
            }
         }
         _loc2_=this.gyvomi.length;
         while(_loc2_--)
         {
            if(param1 is this.gyvomi[_loc2_])
            {
               return false;
            }
         }
         if(this.jof.length==0&&(this.keqojyn.length>0||this.gyvomi.length>0))
         {
            return true;
         }
         _loc2_=this.jof.length;
         while(_loc2_--)
         {
            if(param1 is this.jof[_loc2_])
            {
               return true;
            }
         }
         return false;
      }

      protected function hyn(param1:Vector.<Class>) : Vector.<String> {
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
         _loc3_.sort(this.byjonis);
         return _loc3_;
      }

      protected function nuq() : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Vector.<String> = this.hyn(this.nakijide);
         var _loc2_:Vector.<String> = this.hyn(this.gajycih);
         var _loc3_:Vector.<String> = this.hyn(this.pak);
         return "all of: "+_loc1_.toString()+", any of: "+_loc2_.toString()+", none of: "+_loc3_.toString();
      }

      protected function byjonis(param1:String, param2:String) : int {
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