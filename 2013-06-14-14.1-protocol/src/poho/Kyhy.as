package poho
{
   import mukyrosu.Qanyduk;
   import __AS3__.vec.Vector;


   public class Kyhy extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kyhy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const muquwo:int = 782;

      public const selected:Qanyduk = new Qanyduk(Dywygave);

      private const map:Object = {};

      private const classes:Vector.<Dywygave> = new Vector.<Dywygave>(0);

      private var count:uint = 0;

      private var sugiqogo:Dywygave;

      public function bugojopin() : uint {
         return this.count;
      }

      public function zuhyl(param1:int) : Dywygave {
         return this.classes[param1];
      }

      public function gug(param1:int) : Dywygave {
         return this.map[param1]=(this.map[param1])||(this.lutiju());
      }

      private function lutiju() : Dywygave {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dywygave = new Dywygave();
         _loc1_.selected.add(this.mylim);
         this.count=this.classes.push(_loc1_);
         return _loc1_;
      }

      private function mylim(param1:Dywygave) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.sugiqogo!=param1)
         {
            this.sugiqogo=param1;
            this.selected.dispatch(param1);
         }
         return;
      }

      public function gype() : Dywygave {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.sugiqogo)||(this.gug(muquwo));
      }

      public function nidiz(param1:int) : Pom {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Pom = null;
         var _loc3_:Dywygave = null;
         for each (_loc3_ in this.classes)
         {
            _loc2_=_loc3_.sybiwu.vobydozid(param1);
            if(_loc2_!=_loc3_.sybiwu.syret())
            {
               break;
            }
         }
         return _loc2_;
      }
   }

}