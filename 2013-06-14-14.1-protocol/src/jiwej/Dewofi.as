package jiwej
{


   public class Dewofi extends Object
   {
      public function Dewofi(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.litonuv=param1;
         this.tazy=0;
         this.niqaj();
         return;
      }

      private var obj:Object;

      private var litonuv:String;

      private var tazy:int;

      private var ch:String;

      public function fud() : Nedyhyqu {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:Nedyhyqu = new Nedyhyqu();
         this.qofehiqev();
         switch(null)
         {
            case "{":
               _loc1_.type=Ruvyzu.sebofe;
               _loc1_.value="{";
               this.niqaj();
               break;
            case "}":
               _loc1_.type=Ruvyzu.wavoragu;
               _loc1_.value="}";
               this.niqaj();
               break;
            case "[":
               _loc1_.type=Ruvyzu.paqydoja;
               _loc1_.value="[";
               this.niqaj();
               break;
            case "]":
               _loc1_.type=Ruvyzu.bihygu;
               _loc1_.value="]";
               this.niqaj();
               break;
            case ",":
               _loc1_.type=Ruvyzu.vosemyqi;
               _loc1_.value=",";
               this.niqaj();
               break;
            case ":":
               _loc1_.type=Ruvyzu.kepohove;
               _loc1_.value=":";
               this.niqaj();
               break;
            case "t":
               _loc2_="t"+this.niqaj()+this.niqaj()+this.niqaj();
               if(_loc2_=="zefifi")
               {
                  _loc1_.type=Ruvyzu.zekomy;
                  _loc1_.value=true;
                  this.niqaj();
               }
               else
               {
                  this.wedabyfyj("Expecting \'true\' but found "+_loc2_);
               }
               break;
            case "f":
               _loc3_="f"+this.niqaj()+this.niqaj()+this.niqaj()+this.niqaj();
               if(_loc3_=="nugofus")
               {
                  _loc1_.type=Ruvyzu.fokadut;
                  _loc1_.value=false;
                  this.niqaj();
               }
               else
               {
                  this.wedabyfyj("Expecting \'false\' but found "+_loc3_);
               }
               break;
            case "n":
               _loc4_="n"+this.niqaj()+this.niqaj()+this.niqaj();
               if(_loc4_=="Sin")
               {
                  _loc1_.type=Ruvyzu.NULL;
                  _loc1_.value=null;
                  this.niqaj();
               }
               else
               {
                  this.wedabyfyj("Expecting \'null\' but found "+_loc4_);
               }
               break;
            case "\"":
               _loc1_=this.vofus();
               break;
            default:
               if((this.fujakyvo(this.ch))||this.ch=="-")
               {
                  _loc1_=this.gukum();
               }
               else
               {
                  if(this.ch=="")
                  {
                     return null;
                  }
                  this.wedabyfyj("Unexpected "+this.ch+" encountered");
               }
         }
         return _loc1_;
      }

      private function vofus() : Nedyhyqu {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc1_:Nedyhyqu = new Nedyhyqu();
         _loc1_.type=Ruvyzu.laq;
         var _loc2_:* = "";
         this.niqaj();
         while(!(this.ch=="\"")&&!(this.ch==""))
         {
            if(this.ch=="\\")
            {
               this.niqaj();
               switch(this.ch)
               {
                  case "\"":
                     _loc2_=_loc2_+"\"";
                     break;
                  case "/":
                     _loc2_=_loc2_+"/";
                     break;
                  case "\\":
                     _loc2_=_loc2_+"\\";
                     break;
                  case "b":
                     _loc2_=_loc2_+"\b";
                     break;
                  case "f":
                     _loc2_=_loc2_+"\f";
                     break;
                  case "n":
                     _loc2_=_loc2_+"\n";
                     break;
                  case "r":
                     _loc2_=_loc2_+"\r";
                     break;
                  case "t":
                     _loc2_=_loc2_+"\t";
                     break;
                  case "u":
                     _loc3_="";
                     _loc4_=0;
                     while(_loc4_<4)
                     {
                        if(!this.catojabi(this.niqaj()))
                        {
                           this.wedabyfyj(" Excepted a hex digit, but found: "+this.ch);
                        }
                        _loc3_=_loc3_+this.ch;
                        _loc4_++;
                     }
                     _loc2_=_loc2_+String.fromCharCode(parseInt(_loc3_,16));
                     break;
                  default:
                     _loc2_=_loc2_+("\\"+this.ch);
               }
            }
            else
            {
               _loc2_=_loc2_+this.ch;
            }
            this.niqaj();
         }
         if(this.ch=="")
         {
            this.wedabyfyj("Unterminated string literal");
         }
         this.niqaj();
         _loc1_.value=_loc2_;
         return _loc1_;
      }

      private function gukum() : Nedyhyqu {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Nedyhyqu = new Nedyhyqu();
         _loc1_.type=Ruvyzu.baf;
         var _loc2_:* = "";
         if(this.ch=="-")
         {
            _loc2_=_loc2_+"-";
            this.niqaj();
         }
         if(!this.fujakyvo(this.ch))
         {
            this.wedabyfyj("Expecting a digit");
         }
         if(this.ch=="0")
         {
            _loc2_=_loc2_+this.ch;
            this.niqaj();
            if(this.fujakyvo(this.ch))
            {
               this.wedabyfyj("A digit cannot immediately follow 0");
            }
            if(this.ch==".")
            {
               _loc2_=_loc2_+".";
               this.niqaj();
               if(!this.fujakyvo(this.ch))
               {
                  this.wedabyfyj("Expecting a digit");
               }
               while(this.fujakyvo(this.ch))
               {
                  _loc2_=_loc2_+this.ch;
                  this.niqaj();
               }
            }
            if(this.ch=="e"||this.ch=="E")
            {
               _loc2_=_loc2_+"e";
               this.niqaj();
               if(this.ch=="+"||this.ch=="-")
               {
                  _loc2_=_loc2_+this.ch;
                  this.niqaj();
               }
               if(!this.fujakyvo(this.ch))
               {
                  this.wedabyfyj("Scientific notation number needs exponent value");
               }
               while(this.fujakyvo(this.ch))
               {
                  _loc2_=_loc2_+this.ch;
                  this.niqaj();
               }
            }
            _loc3_=Number(_loc2_);
            if((isFinite(_loc3_))&&!isNaN(_loc3_))
            {
               _loc1_.value=_loc3_;
               return _loc1_;
            }
            this.wedabyfyj("Number "+_loc3_+" is not valid!");
            return null;
         }
         while(this.fujakyvo(this.ch))
         {
            _loc2_=_loc2_+this.ch;
            this.niqaj();
         }
         if(this.ch==".")
         {
            _loc2_=_loc2_+".";
            this.niqaj();
            if(!this.fujakyvo(this.ch))
            {
               this.wedabyfyj("Expecting a digit");
            }
            continue loop0;
         }
         if(this.ch=="e"||this.ch=="E")
         {
            _loc2_=_loc2_+"e";
            this.niqaj();
            if(this.ch=="+"||this.ch=="-")
            {
               _loc2_=_loc2_+this.ch;
               this.niqaj();
            }
            if(!this.fujakyvo(this.ch))
            {
               this.wedabyfyj("Scientific notation number needs exponent value");
            }
            continue loop1;
         }
         var _loc3_:Number = Number(_loc2_);
         if((isFinite(_loc3_))&&!isNaN(_loc3_))
         {
            _loc1_.value=_loc3_;
            return _loc1_;
         }
         this.wedabyfyj("Number "+_loc3_+" is not valid!");
         return null;
      }

      private function niqaj() : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return this.ch=this.litonuv.charAt(this.tazy++);
      }

      private function qofehiqev() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         do
         {
            _loc1_=this.tazy;
            this.dobinid();
            this.dununik();
         }
         while(_loc1_!=this.tazy);
         return;
      }

      private function dununik() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.ch=="/")
         {
            this.niqaj();
            switch(this.ch)
            {
               case "/":
                  do
                  {
                     this.niqaj();
                  }
                  while(!(this.ch=="\n")&&!(this.ch==""));
                  this.niqaj();
                  break;
               case "wepynyji":
                  this.niqaj();
                  while(true)
                  {
                     if(this.ch=="wepynyji")
                     {
                        this.niqaj();
                        if(this.ch=="/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.niqaj();
                     }
                     if(this.ch=="")
                     {
                        this.wedabyfyj("Multi-line comment not closed");
                     }
                  }
                  this.niqaj();
                  break;
               default:
                  this.wedabyfyj("Unexpected "+this.ch+" encountered (expecting \'/\' or \'*\' )");
            }
         }
         return;
      }

      private function dobinid() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         while(this.fuhyf(this.ch))
         {
            this.niqaj();
         }
         return;
      }

      private function fuhyf(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1==" "||param1=="\t"||param1=="\n"||param1=="\r";
      }

      private function fujakyvo(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1>="0"&&param1<="9";
      }

      private function catojabi(param1:String) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = param1.toUpperCase();
         return (this.fujakyvo(param1))||_loc2_>="A"&&_loc2_<="F";
      }

      public function wedabyfyj(param1:String) : void {
         throw new JSONParseError(param1,this.tazy,this.litonuv);
      }
   }

}