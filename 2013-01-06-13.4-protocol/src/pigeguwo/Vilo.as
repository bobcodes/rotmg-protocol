package pigeguwo
{
[CLASS1609]   import flash.display.Bitmap;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Detys;
   import dylaqezo.Vusun;
   import com.company.assembleegameclient.appengine.Lelas;
   import com.company.assembleegameclient.appengine.Wus;
   import totuhare.AppendingLineBuilder;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.Pecipaham;
   import com.company.assembleegameclient.util.Huroj;
   import com.company.assembleegameclient.util.Gejugut;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Dyzonoto;
   import flash.geom.ColorTransform;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;
   import haqakel.Kefyfa;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import kabam.rotmg.assets.services.Dejuceb;
   import com.company.assembleegameclient.util.Gugi;


   public class Vilo extends Jazyv
   {
      public function Vilo(param1:XML, param2:Vusun, param3:Wus) {
         var _loc17_:* = true;
         var _loc18_:* = false;
         var _loc8_:AppendingLineBuilder = null;
         var _loc9_:XML = null;
         var _loc10_:BitmapData = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         super(3552822,1,16777215,1);
         var _loc4_:Huroj = Pecipaham.jujagikan(String(param1.AnimatedTexture.File),int(param1.AnimatedTexture.Index));
         var _loc5_:Gejugut = _loc4_.imageFromDir(Huroj.RIGHT,Huroj.wyqel,0);
         var _loc6_:int = 4/_loc5_.width()*100;
         var _loc7_:BitmapData = TextureRedrawer.redraw(_loc5_.image_,_loc6_,true,0,0);
         this.jozobipov=this.zybiwib(param2,param1);
         if(this.jozobipov)
         {
            _loc7_=Dyzonoto.zategokog(_loc7_,new ColorTransform(0,0,0,0.5,0,0,0,0));
         }
         this.sedi=new Bitmap();
         this.sedi.bitmapData=_loc7_;
         this.sedi.x=-4;
         this.sedi.y=-4;
         addChild(this.sedi);
         this.nameText_=new Capitu().setSize(13).setColor(11776947);
         this.nameText_.setBold(true);
         this.nameText_.setStringBuilder(new Zufi().setParams(param1.DisplayId));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         juwocez.push(this.nameText_.textChanged);
         addChild(this.nameText_);
         this.jeloto=new Capitu().setSize(13).setColor(11776947).setWordWrap(true).setMultiLine(true).setTextWidth(174);
         this.jeloto.setStringBuilder(new Zufi().setParams(param1.Description));
         this.jeloto.filters=[new DropShadowFilter(0,0,0)];
         juwocez.push(this.jeloto.textChanged);
         addChild(this.jeloto);
         this.gorudohy=new Detys(100,1842204);
         addChild(this.gorudohy);
         if(this.jozobipov)
         {
            this.minibica=new Capitu().setSize(13).setColor(11776947).setTextWidth(174).setBold(true);
            this.minibica.setStringBuilder(new Zufi().setParams(Kefyfa.winu));
            this.minibica.filters=[new DropShadowFilter(0,0,0)];
            juwocez.push(this.minibica.textChanged);
            addChild(this.minibica);
            this.unlockText_=new Capitu().setSize(13).setColor(16549442).setTextWidth(174).setWordWrap(false).setMultiLine(true);
            _loc8_=new AppendingLineBuilder();
            for each (_loc9_ in param1.UnlockLevel)
            {
               _loc11_=ObjectLibrary.ronifyva[_loc9_.toString()];
               _loc12_=int(_loc9_.@level);
               if(param2.muj(_loc11_)<int(_loc9_.@level))
               {
                  _loc8_.pushParams(Kefyfa.sijut,
                     {
                        unlockLevel:_loc12_,
                        typeToDisplay:ObjectLibrary.mafiwape[_loc11_]
                     }
                  );
               }
            }
            this.unlockText_.setStringBuilder(_loc8_);
            this.unlockText_.filters=[new DropShadowFilter(0,0,0)];
            juwocez.push(this.unlockText_.textChanged);
            addChild(this.unlockText_);
            this.costText_=new Capitu().setSize(13).setColor(65280);
            this.costText_.setStringBuilder(new Zufi().setParams(Kefyfa.savot,{unlockCost:param1.UnlockCost}));
            this.costText_.filters=[new DropShadowFilter(0,0,0)];
            juwocez.push(this.costText_.textChanged);
            addChild(this.costText_);
            _loc10_=Dejuceb.makeCoin();
            this.vipypyv=new Bitmap(_loc10_);
            addChild(this.vipypyv);
         }
         else
         {
            _loc13_=param3==null?0:param3.numStars();
            this.bestLevel_=new Capitu().setSize(14).setColor(6206769).setMultiLine(true);
            this.bestLevel_.setStringBuilder(new Zufi().setParams(Kefyfa.jabynym,
               {
                  numStars:_loc13_,
                  bestLevel:param3!=null?param3.bestLevel():0,
                  fame:param3!=null?param3.bukiga():0
               }
            ));
            this.bestLevel_.filters=[new DropShadowFilter(0,0,0)];
            juwocez.push(this.bestLevel_.textChanged);
            addChild(this.bestLevel_);
            _loc14_=Gugi.nextStarFame(param3==null?0:param3.bukiga(),0);
            if(_loc14_>0)
            {
               this.nextClassQuest_=new Capitu().setSize(13).setColor(16549442).setTextWidth(160).setMultiLine(true).setWordWrap(true);
               this.nextClassQuest_.setStringBuilder(new Zufi().setParams(Kefyfa.dehiluzom,
                  {
                     nextStarFame:_loc14_,
                     typeToDisplay:param1.DisplayId
                  }
               ));
               this.nextClassQuest_.filters=[new DropShadowFilter(0,0,0)];
               juwocez.push(this.nextClassQuest_.textChanged);
               addChild(this.nextClassQuest_);
            }
         }
         return;
      }

      private var sedi:Bitmap;

      private var nameText_:Capitu;

      private var jeloto:Capitu;

      private var gorudohy:Detys;

      private var bestLevel_:Capitu;

      private var minibica:Capitu;

      private var unlockText_:Capitu;

      private var nextClassQuest_:Capitu;

      private var costText_:Capitu;

      private var vipypyv:Bitmap;

      private var jozobipov:Boolean;

      override protected function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nameText_.x=32;
         this.nameText_.y=6;
         this.jeloto.x=8;
         this.jeloto.y=40;
         this.gorudohy.x=6;
         this.gorudohy.y=height;
         if(this.jozobipov)
         {
            this.minibica.x=8;
            this.minibica.y=height-2;
            this.unlockText_.x=12;
            this.unlockText_.y=height-4;
            this.costText_.x=12;
            this.costText_.y=height-4;
            this.vipypyv.y=this.costText_.y-2;
            this.vipypyv.x=this.costText_.x+this.costText_.getBounds(this.costText_).width+4;
         }
         else
         {
            this.bestLevel_.x=8;
            this.bestLevel_.y=height-2;
            if(this.nextClassQuest_)
            {
               this.nextClassQuest_.x=8;
               this.nextClassQuest_.y=height-2;
            }
         }
         this.draw();
         position();
         return;
      }

      private function zybiwib(param1:Vusun, param2:XML) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Boolean = param1.giho(String(param2.@id),Lelas.luhej);
         var _loc4_:Boolean = param1.mobacek(int(param2.@type));
         return !_loc3_&&!_loc4_;
      }

      override public function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gorudohy.romy(width-10,1842204);
         super.draw();
         return;
      }
   }
[/CLASS]
}