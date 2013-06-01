package pigeguwo
{
[CLASS1614]   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Semytuqa;
   import pudev.Capitu;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;


   public class Natoq extends Jazyv
   {
      public function Natoq(param1:Vector.<Player>, param2:Boolean=true) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.zag=new Vector.<Semytuqa>();
         super(3552822,0.5,16777215,1,param2);
         this.tugym=new Capitu().setSize(12).setColor(11776947);
         this.tugym.setStringBuilder(new Zufi().setParams(Kefyfa.poquziv));
         this.tugym.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.tugym);
         this.jagiq(param1);
         if(!param2)
         {
            filters=[];
         }
         juwocez.push(this.tugym.textChanged);
         return;
      }

      public var tiga:Vector.<Player> = null;

      private var zag:Vector.<Semytuqa>;

      private var tugym:Capitu;

      public function jagiq(param1:Vector.<Player>) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:Player = null;
         var _loc4_:Semytuqa = null;
         this.clear();
         this.tiga=param1.slice();
         if(this.tiga==null||this.tiga.length==0)
         {
            return;
         }
         var _loc2_:* = 0;
         for each (_loc3_ in param1)
         {
            _loc4_=new Semytuqa(11776947,true,_loc3_);
            _loc4_.x=0;
            _loc4_.y=_loc2_;
            addChild(_loc4_);
            this.zag.push(_loc4_);
            _loc2_=_loc2_+32;
         }
         this.tugym.x=width/2-this.tugym.width/2;
         this.tugym.y=_loc2_;
         draw();
         return;
      }

      private function clear() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Semytuqa = null;
         graphics.clear();
         for each (_loc1_ in this.zag)
         {
            removeChild(_loc1_);
         }
         this.zag.length=0;
         return;
      }
   }
[/CLASS]
}