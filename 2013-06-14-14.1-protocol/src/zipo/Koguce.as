package zipo
{
   import poho.Kyhy;
   import kabam.rotmg.assets.services.Bytedif;
   import wohy.Segeqofi;
   import __AS3__.vec.Vector;
   import wohy.Caki;
   import fanij.Cun;
   import poho.Dywygave;
   import poho.Pom;
   import com.company.util.ConversionUtil;


   public class Koguce extends Object
   {
      public function Koguce() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var jopyza:Kyhy;

      public var factory:Bytedif;

      public var lohe:Segeqofi;

      public function gen(param1:XMLList) : Vector.<Caki> {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:XML = null;
         var _loc2_:Vector.<Caki> = new Vector.<Caki>();
         var _loc3_:* = 1;
         for each (_loc4_ in param1)
         {
            _loc2_.push(this.cobotenid(_loc4_,_loc3_));
            _loc3_++;
         }
         _loc2_=this.kipeqepyh(_loc2_);
         _loc2_=this.barovu(_loc2_);
         return _loc2_;
      }

      private function barovu(param1:Vector.<Caki>) : Vector.<Caki> {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:Caki = null;
         var _loc2_:Vector.<Caki> = new Vector.<Caki>();
         if(this.lohe.debipihu())
         {
            _loc3_=false;
            _loc4_=false;
            for each (_loc5_ in param1)
            {
               if(!_loc3_&&(this.lohe.vegyq.toqifiba(_loc5_)))
               {
                  this.lohe.vegyq.rank=_loc5_.rank;
                  _loc2_.push(this.lohe.vegyq);
                  _loc3_=true;
               }
               if(this.lohe.vegyq.name==_loc5_.name)
               {
                  _loc4_=true;
               }
               if(_loc3_)
               {
                  _loc5_.rank++;
               }
               _loc2_.push(_loc5_);
            }
            if(_loc2_.length<20&&!_loc3_&&!_loc4_)
            {
               this.lohe.vegyq.rank=_loc2_.length+1;
               _loc2_.push(this.lohe.vegyq);
            }
         }
         return _loc2_.length>0?_loc2_:param1;
      }

      private function kipeqepyh(param1:Vector.<Caki>) : Vector.<Caki> {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc3_:* = false;
         var _loc4_:Caki = null;
         var _loc5_:Caki = null;
         var _loc2_:* = -1;
         if(this.lohe.debipihu())
         {
            _loc3_=false;
            _loc4_=this.lohe.vegyq;
            for each (_loc5_ in param1)
            {
               if(_loc5_.name==_loc4_.name&&(_loc4_.toqifiba(_loc5_)))
               {
                  _loc2_=_loc5_.rank-1;
                  _loc3_=true;
               }
               else
               {
                  if(_loc3_)
                  {
                     _loc5_.rank--;
                  }
               }
            }
         }
         return param1;
      }

      private function cobotenid(param1:XML, param2:int) : Caki {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc10_:Cun = null;
         var _loc11_:XML = null;
         var _loc3_:Caki = new Caki();
         _loc3_.rygy=param1.Time;
         _loc3_.name=param1.PlayData.CharacterData.Name;
         _loc3_.rank=param1.hasOwnProperty("Rank")?param1.Rank:param2;
         var _loc4_:int = param1.PlayData.CharacterData.Texture;
         var _loc5_:int = param1.PlayData.CharacterData.Class;
         var _loc6_:Dywygave = this.jopyza.gug(_loc5_);
         var _loc7_:Pom = _loc6_.sybiwu.vobydozid(_loc4_);
         var _loc8_:int = param1.hasOwnProperty("Tex1")?param1.Tex1:0;
         var _loc9_:int = param1.hasOwnProperty("Tex2")?param1.Tex2:0;
         _loc3_.diry=this.factory.makeIcon(_loc7_.fegotu,100,_loc8_,_loc9_);
         _loc3_.monyn=ConversionUtil.zyhelokub(param1.PlayData.CharacterData.Inventory);
         _loc3_.jek=_loc6_.jek;
         _loc3_.guildName=param1.PlayData.CharacterData.GuildName;
         _loc3_.qogaze=param1.PlayData.CharacterData.GuildRank;
         _loc3_.pig=param1.WaveNumber;
         if(param1.PlayData.hasOwnProperty("Pet"))
         {
            _loc10_=new Cun();
            _loc11_=new XML(param1.PlayData.Pet);
            _loc10_.apply(_loc11_);
            _loc3_.pet=_loc10_;
         }
         return _loc3_;
      }
   }

}