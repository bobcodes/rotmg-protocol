package dasygu
{
   import __AS3__.vec.Vector;
   import flash.errors.IllegalOperationError;


   public class Zanor extends Object implements Lojinygad, Hemenafa
   {
      public function Zanor() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      protected const keqojyn:Vector.<Class> = new Vector.<Class>();

      protected const jof:Vector.<Class> = new Vector.<Class>();

      protected const gyvomi:Vector.<Class> = new Vector.<Class>();

      protected var qoloqiruw:Ceseto;

      public function allOf(... rest) : Zanor {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rohygokir(rest,this.keqojyn);
         return this;
      }

      public function anyOf(... rest) : Zanor {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rohygokir(rest,this.jof);
         return this;
      }

      public function noneOf(... rest) : Zanor {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rohygokir(rest,this.gyvomi);
         return this;
      }

      public function wyqiziq() : Ceseto {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.qoloqiruw=(this.qoloqiruw)||(this.mewudivih());
      }

      public function jyc() : Hemenafa {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wyqiziq();
         return this;
      }

      public function clone() : Zanor {
         return new Zanor().allOf(this.keqojyn).anyOf(this.jof).noneOf(this.gyvomi);
      }

      protected function mewudivih() : Ceseto {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.keqojyn.length==0&&this.jof.length==0&&this.gyvomi.length==0)
         {
            throw new Dibali(Dibali.wav);
         }
         else
         {
            return new Lutijydic(this.keqojyn,this.jof,this.gyvomi);
         }
      }

      protected function rohygokir(param1:Array, param2:Vector.<Class>) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.takojebo(param1,param2);
         return;
      }

      protected function jawuja() : void {
         throw new IllegalOperationError("This TypeMatcher has been sealed and can no longer be configured");
      }

      protected function takojebo(param1:Array, param2:Vector.<Class>) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Class = null;
         if(param1.length==1&&(param1[0] is Array||param1[0] is Vector.<Class>))
         {
            for each (_loc3_ in param1[0])
            {
               param2.push(_loc3_);
            }
         }
         else
         {
            for each (_loc3_ in param1)
            {
               param2.push(_loc3_);
            }
         }
         return;
      }
   }

}