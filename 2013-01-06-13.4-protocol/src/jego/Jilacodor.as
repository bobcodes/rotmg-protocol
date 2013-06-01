package jego
{
[CLASS935]   import tinava.Dab;
   import fyvanod.Halak;
   import flash.filters.ColorMatrixFilter;
   import haqakel.Kefyfa;
   import flash.events.MouseEvent;
   import qypupet.Vuravipyg;
   import totuhare.AppendingLineBuilder;
   import qypupet.Juvudu;
   import flash.geom.ColorTransform;
   import com.company.util.MoreColorUtil;


   public class Jilacodor extends Sycuki
   {
      public function Jilacodor() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.livutygok=new Halak();
         this.rudawi=new ColorMatrixFilter(MoreColorUtil.calysymes);
         super();
         addEventListener(MouseEvent.CLICK,this.lewema);
         this.jiqad();
         return;
      }

      public const zate:Dab = new Dab();

      public var muranotu:Boolean = false;

      public var tadypa:Boolean = false;

      private var livutygok:Halak;

      private var rudawi:ColorMatrixFilter;

      public function jiqad() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!hucuposeg||(contains(hucuposeg)))
         {
            setTitle(Kefyfa.cecizy,{});
         }
         return;
      }

      private function lewema(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.tadypa)
         {
            this.zate.dispatch();
         }
         return;
      }

      private function tolyde(param1:Vuravipyg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         hucuposeg=this.livutygok.create(param1,48);
         addChild(hucuposeg);
         cosala();
         return;
      }

      public function sukymu(param1:Vuravipyg) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:AppendingLineBuilder = null;
         if(param1)
         {
            this.tolyde(param1);
            setTitle(Kefyfa.kemodanuf,{data:param1.getName()});
            _loc2_=new AppendingLineBuilder();
            _loc2_.pushParams(param1.nyv());
            noz(Kefyfa.kemodanuf,{data:_loc2_});
         }
         return;
      }

      public function vajajozuw(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ColorTransform = null;
         if(this.tadypa!=param1)
         {
            this.tadypa=param1;
            hucuposeg.filters=param1?[this.rudawi]:[];
            _loc2_=param1?MoreColorUtil.vakowin:new ColorTransform();
            hucuposeg.transform.colorTransform=_loc2_;
         }
         return;
      }
   }
[/CLASS]
}