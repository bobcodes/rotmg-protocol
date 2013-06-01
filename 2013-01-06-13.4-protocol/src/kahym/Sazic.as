package kahym
{
[CLASS573]   import __AS3__.vec.Vector;


   public class Sazic extends Object implements Vasevekin
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Sazic() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.index=0;
         this.voq();
         this.count=this.jigucahu.length;
         this.cem();
         return;
      }

      public static var tiwuwubef:Class = Wafozod;

      private var jigucahu:Vector.<String>;

      private var gagatamo:Vector.<int>;

      private var index:int;

      private var count:int;

      public function tod() : String {
         var _loc1_:int = this.gagatamo[this.index++%this.count];
         return this.jigucahu[_loc1_];
      }

      private function voq() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         var _loc1_:XML = XML(new tiwuwubef());
         this.jigucahu=new Vector.<String>(0);
         for each (_loc2_ in _loc1_.Protip)
         {
            this.jigucahu.push(_loc2_.toString());
         }
         this.count=this.jigucahu.length;
         return;
      }

      private function cem() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Vector.<int> = new Vector.<int>(0);
         var _loc2_:* = 0;
         while(_loc2_<this.count)
         {
            _loc1_.push(_loc2_);
            _loc2_++;
         }
         this.gagatamo=new Vector.<int>(0);
         while(_loc2_>0)
         {
            this.gagatamo.push(_loc1_.splice(Math.floor(Math.random()*_loc2_--),1)[0]);
         }
         this.gagatamo.fixed=true;
         return;
      }
   }
[/CLASS]
}