package ryqerovo
{
[CLASS1598]   import wufyba.Tyz;
   import flash.utils.Dictionary;
   import wufyba.Pyluwej;
   import wufyba.Hifo;
   import flash.display.DisplayObject;


   public class Nyjuqafe extends Object implements Tyz
   {
      public function Nyjuqafe(param1:Pyluwej) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cyvyrovov=new Dictionary(true);
         super();
         this._factory=param1;
         return;
      }

      private const geqas:Array = [];

      private var cyvyrovov:Dictionary;

      private var _factory:Pyluwej;

      public function malydylo(param1:Hifo) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.geqas.indexOf(param1);
         if(_loc2_>-1)
         {
            return;
         }
         this.geqas.push(param1);
         this.neqyvo();
         return;
      }

      public function cove(param1:Hifo) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.geqas.indexOf(param1);
         if(_loc2_==-1)
         {
            return;
         }
         this.geqas.splice(_loc2_,1);
         this.neqyvo();
         return;
      }

      public function tadylugi(param1:DisplayObject, param2:Class) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Array = this.rupece(param1,param2);
         if(_loc3_)
         {
            this._factory.puhywylec(param1,param2,_loc3_);
         }
         return;
      }

      public function hejapih(param1:Object, param2:Class) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Array = this.rupece(param1,param2);
         if(_loc3_)
         {
            this._factory.puhywylec(param1,param2,_loc3_);
         }
         return;
      }

      private function neqyvo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cyvyrovov=new Dictionary(true);
         return;
      }

      private function rupece(param1:Object, param2:Class) : Array {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Hifo = null;
         if(this.cyvyrovov[param2]===false)
         {
            return null;
         }
         if(this.cyvyrovov[param2]==undefined)
         {
            this.cyvyrovov[param2]=false;
            for each (_loc3_ in this.geqas)
            {
               _loc3_.vavog();
               if(_loc3_.jipini.matches(param1))
               {
                  this.cyvyrovov[param2]=(this.cyvyrovov[param2])||([]);
                  this.cyvyrovov[param2].push(_loc3_);
               }
            }
            if(this.cyvyrovov[param2]===false)
            {
               return null;
            }
         }
         return this.cyvyrovov[param2] as Array;
      }
   }
[/CLASS]
}