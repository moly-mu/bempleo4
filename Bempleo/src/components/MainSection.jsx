import PropTypes from "prop-types";


const MainSection = ({ onLoginClick }) => {
  return (
    <section className="py-16 bg-gray-50">
      <div className="container mx-auto text-center">
        <h2 className="text-3xl font-bold">
          Encuentra múltiples empleos en diferentes ámbitos
        </h2>
        <p className="text-lg mt-4">
          Inicia sesión para acceder a tu cuenta o explorar más funciones.
        </p>
        <button
          className="bg-blue-600 text-white py-2 px-4 rounded mt-8 hover:bg-blue-700"
          onClick={onLoginClick}
        >
          Iniciar sesión
        </button>
      </div>
    </section>
  );
};
MainSection.propTypes = {
    onLoginClick: PropTypes.func.isRequired, 
  };
  

export default MainSection;
