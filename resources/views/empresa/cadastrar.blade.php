@extends('layouts.app')

@section('conteudo')
<div  class="body-register_empresario">

<section class="d-flex justify-content-evenly">

    <div class="nome-logo">
        <h4 class="text-register-empresario">Divulgue seu <br>
            negócio em <br>
            nosso site!</h4>
            <svg class="logo_do_site" width="239" height="199" viewBox="0 0 239 199" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <rect width="239" height="199" fill="url(#pattern0)"/>
                <defs>
                <pattern id="pattern0" patternContentUnits="objectBoundingBox" width="1" height="1">
                <use xlink:href="#image0_264_873" transform="translate(0.0231481 -0.148372) scale(0.00188079 0.0022202)"/>
                </pattern>
                <image id="image0_264_873" width="512" height="512" xlink:href="data:image/png;base64,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ERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERFp0RA7AJGCGwCsBSwNjASWaPln/zb/vZnAN63aJ8D7Le0D4EuTaEWkNFQAiPi3PLAXsDOwBtDdwza/Bv4NvNbyz9Et/5zmYdsiUkIqAET82RE4HtgUm2OrEXgbeKWlvdzyT90tEJEuqQAQyW414E/ABrEDafEJc4qCSmHwPtAcMygREZGiaABOxT2/b068TQCeAC4BDgRWB3r6HxIRyQvdAZCyWAxYBVi55V8vBswHzA90A2YBU3DP2sfirpj/A7xK+7fU+wLXAHuGDjygmbg+tr5bMBqYGDMoEbGhAkCKagjuJbwtcc/kF8uwrbdxV88PAQ8As4E7ge0yxpiiZmAM8z5C+DRmUCLinwoAKZKewK7AwcAWQI8AvzEN+BBYIcC2U/Ylc79o+AquMGqMGZSI1E8FgBTBAOBI4BhgeORYymQa7lPESlHwcsu//zZmUCJSHRUAkmc9gZ8CpwBDI8ciTiPwFvN+mvhVzKBEZF4qACSvtgD+iJt0R9JX+TSx9SOEMVEjEik5FQCSN32BM4ATcG/vS35Nwj0y+A/wOvAi8AIwPWZQImWhAkDyZGngDtznfFJMs3EvF77InMLgadznmSLikQoAyYutgJuBwbEDEXOVTxNbPz54GfgsZlAieacCQPJgL+A6oFfsQCQp44CPcRM6DcR9DdKAm8hoUkt7H7eA0hu4xw1vR4lUJEEqACR1+wNX4WdFPZGPcRM6PQg8jCsSREQkMTvgpuiNPY++WjHbt8AtuNkiRUQkERsAU4mfJNTK0V4G9kB3RUVEoloI94JX7KSgVr72HLA5IiJirhvwd+InArVyt1vQ7JJScLrdJak5DTg7dhCBnQm8g3u/YRrQD1gAGNbSlsXNcLgEOkZjGgsciHtpUKRwdHKRlCwHvAr0jh1IYMOobmKbfrhCYBRu8qPVW9rC4UKTNpqBS4CfoZUPRUSCuZ/4t34t2qYZx2kwsBFwNHANbsa8xgT6VeR2N64gExERz3Yj/kneqh3racxaG4D7cuII4C/A87jP3GL3tUjtGdzdG5FC0CMASUED8BLu9nYZPIpbzTC0HsAKzHl0sDrwHTSdchZvApsAX8YORCQrFQCSgm2BBwx/bwxu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"/>
                </defs>
                </svg>

    </div>

     <div class="cadastro_empresario">
        <div class="text-center py-5"><h4 class="fw-bold">{{ __('Cadastre sua empresa') }}</h4></div>

        <div class="card-body">
            <form method="POST" action="{{ route('empresa.salvar') }}">
                @csrf

                {{-- <div class="row mb-3">
                    <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Name') }}</label> --}}

                    <div class="col-md-6 register-itens-empresario-align  py-2">
                        <input id="nome" type="text" placeholder="Nome da Empresa" class="form-control register-itens-empresario @error('nome') is-invalid @enderror" name="nome" value="{{ old('nome') }}" required autocomplete="nome" autofocus>

                        @error('nome')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>


                    <div class="col-md-6 register-itens-empresario-align  py-2">
                        <input id="cnpj" type="text" placeholder="CNPJ" class="form-control register-itens-empresario @error('cnpj') is-invalid @enderror" name="cnpj" value="{{ old('cnpj') }}" required autocomplete="cnpj" autofocus>

                        @error('cnpj')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>


                    <div class="col-md-6 register-itens-empresario-align  py-2">
                        <input id="cpf" type="number" placeholder="CPF" class="form-control register-itens-empresario @error('cpf') is-invalid @enderror" name="cpf" value="{{ old('cpf') }}" required autocomplete="cpf" autofocus>

                        @error('cpf')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                {{-- </div> --}}

                {{-- <div class="row mb-3">
                    <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label> --}}

                    <div class="col-md-6 register-itens-empresario-align  py-2">
                        <input id="endereco" type="text" placeholder="Endereço" class="form-control register-itens-empresario @error('endereco') is-invalid @enderror" name="endereco" value="{{ old('endereco') }}" required autocomplete="endereco">

                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                {{-- </div> --}}


                {{-- <div class="row mb-3">
                    <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label> --}}

                    <div class="col-md-6 register-itens-empresario-align  py-2">
                        <input id="telefone" type="tel" pattern="(\(?\d{2}\)?\s)?(\d{4,5}\-\d{4})" placeholder="Telefone (99)99999-9999" class="form-control register-itens-empresario @error('telefone') is-invalid @enderror" name="telefone" required autocomplete="telefone">

                        @error('telefone')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="col-md-6 register-itens-empresario-align  py-2">
                        <select class="form-select" aria-label="Default select example" name="categoria_empresa_id" id="categoria_empresa_id" >
                            <option selected>Selecione a categoria </option>
                            @foreach ( $categoria_empresas as $categoria_empresa )
                            <option value="{{$categoria_empresa->id}}">{{$categoria_empresa->nome}}</option>

                            @endforeach
                          </select>
                        </div>
                {{-- </div> --}}

                {{-- <div class="row mb-3">
                    <label for="password-confirm" class="col-md-4 col-form-label text-md-end">{{ __('Confirm Password') }}</label> --}}


                {{-- </div> --}}

                <div class="text-center">
                    <div class="py-5">
                        <button type="submit" class="botao-register-empresario btn btn-danger">
                            <h4 class="text-white text-center"> {{ __('Cadastrar') }}</h4>
                        </button>
                    </div>
                </div>
            </form>
        </div>
     </div>



</section>
</div>
@endsection
