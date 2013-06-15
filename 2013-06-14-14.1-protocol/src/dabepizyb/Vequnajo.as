package dabepizyb
{
   import vyso.Jez;
   import flash.utils.Dictionary;
   import vyso.Tokyhoqid;
   import vyso.Vapuz;
   import flash.display.DisplayObject;


   public class Vequnajo extends Object implements Jez
   {
      public function Vequnajo(param1:Tokyhoqid) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pifunelaf=new Dictionary(true);
         super();
         this._factory=param1;
         return;
      }

      private const zenupi:Array = [];

      private var pifunelaf:Dictionary;

      private var _factory:Tokyhoqid;

      public function rutuhu(param1:Vapuz) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.zenupi.indexOf(param1);
         if(_loc2_>-1)
         {
            return;
         }
         this.zenupi.push(param1);
         this.qarol();
         return;
      }

      public function wozohyk(param1:Vapuz) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.zenupi.indexOf(param1);
         if(_loc2_==-1)
         {
            return;
         }
         this.zenupi.splice(_loc2_,1);
         this.qarol();
         return;
      }

      public function jihe(param1:DisplayObject, param2:Class) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Array = this.gusabu(param1,param2);
         if(_loc3_)
         {
            this._factory.nesu(param1,param2,_loc3_);
         }
         return;
      }

      public function zerohufom(param1:Object, param2:Class) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Array = this.gusabu(param1,param2);
         if(_loc3_)
         {
            this._factory.nesu(param1,param2,_loc3_);
         }
         return;
      }

      private function qarol() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pifunelaf=new Dictionary(true);
         return;
      }

      private function gusabu(param1:Object, param2:Class) : Array {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Vapuz = null;
         if(this.pifunelaf[param2]===false)
         {
            return null;
         }
         if(this.pifunelaf[param2]==undefined)
         {
            this.pifunelaf[param2]=false;
            for each (_loc3_ in this.zenupi)
            {
               _loc3_.fuhe();
               if(_loc3_.wef.matches(param1))
               {
                  this.pifunelaf[param2]=(this.pifunelaf[param2])||([]);
                  this.pifunelaf[param2].push(_loc3_);
               }
            }
            if(this.pifunelaf[param2]===false)
            {
               return null;
            }
         }
         return this.pifunelaf[param2] as Array;
      }
   }

}