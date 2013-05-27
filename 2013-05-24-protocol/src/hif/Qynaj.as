package hif
{
   import tulunyno.Hugyqufyq;
   import coh.Jumekama;
   import flash.filters.ColorMatrixFilter;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.MouseEvent;
   import zoroc.Bezuco;
   import nec.AppendingLineBuilder;
   import zoroc.Joqihi;
   import flash.geom.ColorTransform;
   import com.company.util.MoreColorUtil;


   public class Qynaj extends Poga
   {
      public function Qynaj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kaqotetuh=new Jumekama();
         this.fyfydejigi=new ColorMatrixFilter(MoreColorUtil.lyheq);
         super();
         addEventListener(MouseEvent.CLICK,this.risohukit);
         this.vyzitawa();
         return;
      }

      public const sozy:Hugyqufyq = new Hugyqufyq();

      public var nacesoceq:Boolean = false;

      public var tusyhunu:Boolean = false;

      private var kaqotetuh:Jumekama;

      private var fyfydejigi:ColorMatrixFilter;

      public function vyzitawa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!danyz||(contains(danyz)))
         {
            setTitle(I18nKeys.dozi,{});
         }
         return;
      }

      private function risohukit(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.tusyhunu)
         {
            this.sozy.dispatch();
         }
         return;
      }

      private function mav(param1:Bezuco) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         danyz=this.kaqotetuh.create(param1,48);
         addChild(danyz);
         kozyqi();
         return;
      }

      public function tavulaju(param1:Bezuco) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:AppendingLineBuilder = null;
         if(param1)
         {
            this.mav(param1);
            setTitle(I18nKeys.kuw,{data:param1.getName()});
            _loc2_=new AppendingLineBuilder();
            _loc2_.pushParams(param1.morezo());
            hak(I18nKeys.kuw,{data:_loc2_});
         }
         return;
      }

      public function basisi(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = null;
         if(this.tusyhunu!=param1)
         {
            this.tusyhunu=param1;
            danyz.filters=param1?[this.fyfydejigi]:[];
            _loc2_=param1?MoreColorUtil.gejuk:new ColorTransform();
            danyz.transform.colorTransform=_loc2_;
         }
         return;
      }
   }

}